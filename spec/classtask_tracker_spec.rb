require 'classtask_tracker'

RSpec.describe ClasstaskTracker do

  it "checks there's a list I can add stuff to" do
  
    my_class = ClasstaskTracker.new("wash car", "boil cabbage")
    my_class.add("vacuum")
    my_class.add("do laundry")
    last_item = my_class.add("feed cat")
  

    expect(last_item).to eq ["wash car", "boil cabbage", "vacuum", "do laundry", "feed cat"]
  end

  it "checks if task is complete" do
    my_class = ClasstaskTracker.new("wash car", "boil cabbage")
    my_class.add("vacuum")
    my_class.add("do laundry")
    my_class.done("boil cabbage")
    last_item = my_class.done("vacuum")

    expect(last_item).to eq ["wash car", "*boil cabbage", "*vacuum", "do laundry"]

  end

  it "removes a task if complete" do
    my_class = ClasstaskTracker.new("wash car", "boil cabbage")
    my_class.add("vacuum")
    my_class.add("do laundry")
    my_class.done("boil cabbage")
    my_class.done("vacuum")
    last_item = my_class.gone

    expect(last_item).to eq ["wash car", "do laundry"]

  end

end

