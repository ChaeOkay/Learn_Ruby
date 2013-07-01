class Temperature

  def initialize(degrees)
    @temperature = degrees
  end

  def in_fahrenheit
    @temperature[:f] ||= self.ftoc
  end

  def in_celsius
    @temperature[:c] ||= self.ctof 
  end

  def self.from_celsius(degrees)
    self.new(:c => degrees)
  end

  def self.from_fahrenheit(degrees)
    self.new(:f => degrees)
  end

  def ftoc
    @temperature[:c] = (self.in_celsius * 1.8) + 32
    @temperature[:c].round(2)
  end

  def ctof
    @temperature[:c] = (self.in_fahrenheit - 32) / 1.8
    @temperature[:c].round(2)
  end

end

class Celsius < Temperature
  def initialize(degrees_in_c)
    @temperature = Hash.new
    @temperature[:c] = degrees_in_c
  end
end

class Fahrenheit < Temperature
  def initialize(degrees_in_f)
    @temperature = Hash.new
    @temperature[:f] = degrees_in_f
  end
end