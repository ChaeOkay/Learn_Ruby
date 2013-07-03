class Timer
  attr_accessor :time, :seconds
  
  def initialize
    @time = Time.new(0)
    @seconds = 0
  end

  def time_string
    @time += @seconds
    @time.strftime "%T"
  end
end
