class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(opt)
    if opt.is_a?(Hash)
      @entries.merge!(opt)
    elsif opt.is_a?(String)
      @entries[opt] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.keys.any? do |hash_key|
      hash_key == key
    end
  end

  def find(key)
    @entries.select {|entry| entry[key]}
  end

  def printable
    sorted_return = ''

    @entries.keys.sort!.each do |key|
      sorted_return += "[#{key}] \"#{@entries[key]}\"\n"
    end
    
    sorted_return.chomp
  end

end