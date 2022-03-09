require 'reading_time'

RSpec.describe "estimate reading time for text" do

  it "checks reading time in minutes" do
    text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique posuere erat. Sed et sem nunc. Quisque et sem nec diam auctor fermentum. Ut porttitor pretium odio ac laoreet. Nam pulvinar ligula tellus, quis tincidunt mi porta sit amet. Cras ornare pellentesque risus auctor consectetur. Nullam eget nulla eget ligula posuere ornare ac et tellus. Nam vitae sem facilisis, tincidunt ipsum a, rhoncus enim. Ut interdum felis velit, eget sagittis quam feugiat a. Cras condimentum placerat fringilla. Curabitur accumsan a mi eget sodales. Curabitur sodales leo erat, et egestas neque pharetra id. Quisque congue erat at condimentum volutpat. Nulla ut lobortis justo. Proin ullamcorper blandit quam, ut iaculis velit. Duis ac nisl vel dui vestibulum sollicitudin id non augue ugulor."
    
    expect(reading_time(text)).to eq "Estimated reading time 2.4 minutes"
  end

end

# establish method grammar_checker method
# pass it a text arguement
# take the first chrarcter of the string and esnure its a captial
# take the last character of a string and ensure it is EITHER full stop, question mark or exclaimation mark
# return "Grammar spot on!" if both conditions are met
# return "Grammar needs some work" if either condition fails - go further and state which condition fails?
# return "YOu could use a grammar lesson" if both conditions fail

RSpec.describe "grammar_checker method" do
  
  # it "checks if string starts with a capital" do
  #   text = "The weather is clear outside."
  #   expect(grammar_checker(text)).to eq true
  # end

  # it "checks if string does NOT start with a capital" do
  #   text = "the weather is clear outside."
  #   expect(grammar_checker(text)).to eq false
  # end

  # it "checks if string ends with a punctuation mark" do
  #   text = "The weather is clear outside."
  #   expect(grammar_checker(text)).to eq true
  # end

  # it "checks if string ends with a question mark" do
  #   text = "The weather is clear outside?"
  #   expect(grammar_checker(text)).to eq true
  # end

  # it "checks if string ends with an exclamation mark" do
  #   text = "The weather is clear outside!"
  #   expect(grammar_checker(text)).to eq true
  # end

  # it "checks if string ends with a sentence-ending punctuation mark" do
  #   text = "The weather is clear outside"
  #   expect(grammar_checker(text)).to eq false
  # end

  it "checks 1st and last letters are correct" do
    text = "The weather is clear outside!"
    expect(grammar_checker(text)).to eq "Grammar spot on!"
  end

  it "checks 1st and last letters are correct" do
    text = "The weather is clear outside?"
    expect(grammar_checker(text)).to eq "Grammar spot on!"
  end

  it "checks 1st and last letters are correct" do
    text = "The weather is clear outside."
    expect(grammar_checker(text)).to eq "Grammar spot on!"
  end

  it "checks either 1st or last letters are correct" do
    text = "The weather is clear outside"
    expect(grammar_checker(text)).to eq "Grammar needs some work."
  end

  it "checks either 1st or last letters are correct" do
    text = "the weather is clear outside."
    expect(grammar_checker(text)).to eq "Grammar needs some work."
  end

  it "checks either 1st or last letters are correct" do
    text = "the weather is clear outside?"
    expect(grammar_checker(text)).to eq "Grammar needs some work."
  end
  
  it "checks either 1st or last letters are correct" do
    text = "the weather is clear outside!"
    expect(grammar_checker(text)).to eq "Grammar needs some work."
  end

  it "checks if both 1st or last letters are wrong" do
    text = "the weather is clear outside"
    expect(grammar_checker(text)).to eq "You could use a grammar lesson..."
  end

end