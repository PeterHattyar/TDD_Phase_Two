# I want to see an estimate of reading time for a text, assuming that I can read 50 words a minute.

text = ""

def reading_time(text)
  words = text.split(" ").length
  minutes = (words.to_f / 50)
  return "Estimated reading time #{minutes} minutes"
end

# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

def grammar_checker(text)
  first_letter = text.chr
  last_letter = text.slice(-1).chr
  punctuation_marks = ["!", "?", "."]
  
  ll_result = punctuation_marks.include?(last_letter)
  fl_result = (first_letter == first_letter.upcase ? true : false)

  if fl_result == true && ll_result == true
    return "Grammar spot on!"
  elsif fl_result == true || ll_result == true
    return "Grammar needs some work."
  else 
    return "You could use a grammar lesson..."
  end
    
  
end