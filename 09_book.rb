class Book

  attr_accessor :title

  def initialize
    @lowercase_words = ['the', 'a', 'an', 'and', 'in', 'of'] 
    @title_new = ''
  end

  def title

    @title.split(' ').map do |word| 
      @title_new += @lowercase_words.include?(word) ? "#{word}\s" : "#{word.capitalize}\s"
    end

    @title_new[0] = @title_new.slice(0, 1).capitalize
    @title = @title_new[0...-1]
  end

end