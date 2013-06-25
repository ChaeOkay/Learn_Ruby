def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  array.inject(0, :+)
end

def multiply(*args)
  args.inject(:*)
end

def power(num1, num2)
  num1**num2
end

def factorial(num)
  (0..num).inject(1, :*)
end