class Temperature

  def initialize(degrees)
    @temperature = degrees
    @temperature[:f] ||= nil
    @temperature[:c] ||= nil
  end

  def in_fahrenheit
    @temperature[:f].nil? ?  self.ftoc : @temperature[:f]
  end

  def in_celsius
    @temperature[:c].nil? ?  self.ctof : @temperature[:c]
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
end