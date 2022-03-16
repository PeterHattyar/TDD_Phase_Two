class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
    @start = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    return @contents.split(" ").count
  end

  def reading_time(wpm)
    return count_words / wpm
  end

  def reading_chunk(wpm, minutes)
    sentence = @contents.split(" ")
    words_read = wpm * minutes
    
    chunk = sentence.slice(@start,words_read).join(" ")
    @start += words_read

      if @start > sentence.length
        @start = 0
      end 

    return chunk
    
  end
end