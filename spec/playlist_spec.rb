require 'playlist'

# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.

RSpec.describe PlayList do

  it "has a list I can add songs to" do
    
    my_list = PlayList.new
    listen = my_list.listened_songs

    expect(listen).to eq []

  end

  it "adds songs to my list and displays them" do
    
    my_list = PlayList.new
    new_song = my_list.add("Aerodynamic")
    new_song = my_list.add("Hero")
    new_song = my_list.add("Bring Me To Life")
    listen = my_list.listened_songs

    expect(listen).to eq ["Aerodynamic", "Hero", "Bring Me To Life"]

  end

end