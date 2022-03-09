def make_snippet(sentence)
  word_array = sentence.split(" ")
  first_5_words = word_array.first(5).join(" ")
  
  if word_array.length <= 5
    return sentence
  else
    return first_5_words + "..."
  end

end