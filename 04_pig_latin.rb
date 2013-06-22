def translate(words_to_pig)

  if words_to_pig != words_to_pig.downcase
    words_to_pig.downcase
    words_array = pig_latinize(words_to_pig).map do |word|
      word.capitalize!
    end
  else
    words_array = pig_latinize(words_to_pig)
  end
  words_array.join(" ")
end


def pig_latinize(words)
  pig_words = words.split(" ")

  pig_words.map! do |word|
    if word.start_with?('a', 'e', 'i', 'o')
      word = word + "ay"
    else
      word_start = word[/^[^aeio]+/]
      word.delete!(word_start)
      word = word.insert(-1, word_start+"ay")
    end
  end
  pig_words
end