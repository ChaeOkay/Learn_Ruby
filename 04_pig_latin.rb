def translate(words_to_pig)
  pig_words = words_to_pig.split(" ")

  pig_words.map! do |word|
	  if word.start_with?('a', 'e', 'i', 'o')
      word = word + "ay"
    else
      word_start = word[/^[^aeio]+/]
      word.delete!(word_start)
      word = word.insert(-1, word_start+"ay")
    end
  end
  pig_words.join(" ")
end