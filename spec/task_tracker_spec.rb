require "task_tracker"

# define method task_tracker
# take the argument and see if it includes the string "@TODO"

RSpec.describe "task_tracker method" do

  it "checks if string includes @TODO" do
    text = "there's a blue sky and there's so much @TODO"
    expect(task_tracker(text)).to eq true 
  end

  it "checks if string does NOT include @TODO" do
    text = "there's a blue sky and there are so many clouds"
    expect(task_tracker(text)).to eq false 
  end

end

