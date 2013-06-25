def reverser
  yield.split(" ").map { |word| word.reverse! }.join(" ")
end

def adder(increment = 1)
  yield + increment
end

def repeater(repetitions = 1)
  n = 0
  repetitions.times { yield }
  return n
end