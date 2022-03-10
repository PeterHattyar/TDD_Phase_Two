require 'grammar_stats'

RSpec.describe GrammarStats do

  it "check if check method expects argument and is a string w correct punctuation" do
    my_class = GrammarStats.new
    gramcheck = my_class.check("Maya Hee Maya Hoo!")

    expect(gramcheck).to eq true
  end

  it "check if check method fails when lowercase" do
    my_class = GrammarStats.new
    gramcheck = my_class.check("maya Hee Maya Hoo!")

    expect(gramcheck).to eq false
  end

  it "check if check method fails of no punctuation" do
    my_class = GrammarStats.new
    gramcheck = my_class.check("maya Hee Maya Hoo!")

    expect(gramcheck).to eq false
  end

  it "check if lowercase and no punctuation" do
    my_class = GrammarStats.new
    gramcheck = my_class.check("maya Hee Maya Hoo")

    expect(gramcheck).to eq false
  end

  it "returns how many sentences passed the checks" do
    my_class = GrammarStats.new
    my_class.check("This has passed.")
    my_class.check("This has passed too!")
    my_class.check("this has failed.")
    
    passed_amount = my_class.pass_counter

    expect(passed_amount).to eq 2
  end

  it "returns how many sentences passed the checks in percentage" do
    my_class = GrammarStats.new
    my_class.check("This has passed.")
    my_class.check("This has passed too!")
    my_class.check("this has failed.")
    my_class.check("this has utterly failed")

    text_percent = my_class.percentage_good

    expect(text_percent).to eq 50
  end

end