class GrammarStats
    
    def initialize
      @passed_sentences = 0
      @failed_sentences = 0
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
      first_letter = text.chr
      last_letter = text.slice(-1).chr
      punctuation_marks = ["!", "?", "."]
      
      if first_letter.upcase == first_letter && punctuation_marks.include?(last_letter) == true
        @passed_sentences += 1
        return true
      else
        @failed_sentences += 1
        return false
      end



    end

    def pass_counter
      return @passed_sentences
    end
  
    def percentage_good
      all_sentences = @passed_sentences + @failed_sentences
      percentage = (@passed_sentences.to_f / all_sentences) * 100.to_i
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      return percentage
    end

end