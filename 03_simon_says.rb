def echo(simon)
  simon
end

def shout(simon)
  simon.upcase!
end

def repeat(simon, repeat=2)
  answer = []
  repeat.times do
    answer << simon
  end
  answer.join(' ')
end

def start_of_word(word, chars)
  word[0, chars]
end

def first_word(sentence)
  sentence.split(" ").first
end

def titleize(words)
  litte_words = %w(over at and the)

  words_array = words.split(" ")
  words_capitalized = words_array.shift.capitalize!

  if words_array.empty?
    words_capitalized
  else
    words_array.map do |word|
      word.capitalize! unless litte_words.include?(word)
    end
    words_array.unshift(words_capitalized).join(" ")
  end
end