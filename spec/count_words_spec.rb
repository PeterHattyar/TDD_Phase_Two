require "count_words"

RSpec.describe "takes string, returns the number of words" do

it "accepts a string and returns word numbers" do
  
  result = count_words("I am so tired")
  expect(result).to eq 4
  end 

end

