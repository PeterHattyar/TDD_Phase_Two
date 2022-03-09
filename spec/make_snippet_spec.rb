require 'make_snippet'

RSpec.describe "return first five words" do

  it "accepts a string" do
    result = make_snippet("Hello World")
    expect(result).to eq "Hello World"
  end

  it "takes string, returns first five words" do
    result = make_snippet("Hello World how is the")
    expect(result).to eq "Hello World how is the"
  end

  it "it returns the first 5 words and '...' if the sentence is longer than 5 words" do
    result = make_snippet("Hello World how is the weather this evening?")
    expect(result).to eq "Hello World how is the..."
  end

end