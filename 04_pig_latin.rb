def translate(words_to_pig)
  pig_words = words_to_pig.split(" ")

  pig_words.map! do |word|
    $punctuation = ""
    $caps = false

    check_capitalization(word)
    check_punctuation(word)

    word = pigify(word)

    add_capitalization?(word)
    add_punctuation?(word)
  end

  pig_words.join(" ")
end


def pigify(word)
  if word =~ /^[aeio]/i
  #if word.start_with?("a", "e", "i", "o") #<----regex for caps
    word + "ay"
  else
    word_start = word[/^[^aeio]+/]
    word.delete!(word_start)
    word.insert(-1, word_start+"ay")
  end
end

def check_capitalization(word)
  if word != word.downcase
    word.downcase 
    $caps = true
  end
end

def add_capitalization?(word)
  word.capitalize! if $caps == true
end

def check_punctuation(word)
  if word.end_with?('.','!', '?', ',')
    $punctuation = word[-1] 
    word.gsub!(/\.|\!|\?|\,/, '')
  end
end

def add_punctuation?(word)
  $punctuation.length != 0 ? word + $punctuation : word
end