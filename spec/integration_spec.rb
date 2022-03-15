require "music_library"
require "track"

RSpec.describe "integration" do
  
  it "adds a track to the library" do
    music_library = MusicLibrary.new
    track = Track.new("my_title", "my_artist") # <---
    music_library.add(track) # <- Instance of Track!^

    expect(music_library.all).to eq [track]
  end
  
  it "adds multiple track to the library" do
    music_library = MusicLibrary.new
    track_1 = Track.new("my_title_1", "my_artist_2")
    track_2 = Track.new("my_title_2", "my_artist_2") # <---
    music_library.add(track_1) # <- Instance of Track!^
    music_library.add(track_2)

    expect(music_library.all).to eq [track_1, track_2]
  end

  it "searches for track by full title" do

    music_library = MusicLibrary.new
    track_1 = Track.new("my_title_1", "my_artist_2")
    track_2 = Track.new("my_title_2", "my_artist_2")
    music_library.add(track_1) 
    music_library.add(track_2)
    result = music_library.search_by_title("my_title_2")

    expect(result).to eq [track_2]

  end

end