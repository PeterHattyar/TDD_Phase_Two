class PlayList
  
  def initialize
    @full_list = []
  end

  def listened_songs
    puts @full_list
    return @full_list
  end

  def add(song)
    @full_list << song
  end

end