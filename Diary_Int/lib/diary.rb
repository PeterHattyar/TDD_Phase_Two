class Diary
  def initialize
    @diary = []
  end

  def add(entry) 
    @diary << entry
  end

  def all
    return @diary
  end

  def count_words

    pages = 0
      
      @diary.each do |page|
      pages += page.count_words
      end
      
    return pages
    
  end

  def reading_time(wpm)

    return count_words / wpm

  end

  def find_best_entry_for_reading_time(wpm, minutes)
    @diary.each do |entry|
      read_text = (entry.reading_chunk(wpm, minutes)).split(" ")
      
        if read_text.length == wpm * minutes
          return entry.contents
        end
    end
        
  end
end