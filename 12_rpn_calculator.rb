module WithSymbols
  def tokens(string_input)
    string_input.split(' ').map do |item|
      item.to_i == 0 ? @rpn_holder << item.to_sym : @rpn_holder << item.to_i
    end
    @rpn_holder
  end

  def evaluate(string_input)
    tokens(string_input)
    token_holder = []

    @rpn_holder.each do |item| 
      if [:*, :+, :-, :/].include?(item)
        num1, num2 = token_holder.pop, token_holder.pop
        token_holder << num1.send(item, num2.to_f)
      else
        token_holder << item
      end
    end
    token_holder.last
  end
end

module RPNFunctions
  def plus
    calculate { |num1, num2| num1 + num2 }
  end

  def minus
    calculate { |num1, num2| num1 - num2 }
  end

  def divide
    calculate { |num1, num2| num1.to_f / num2 }
  end

  def times
    calculate { |num1, num2| num1 * num2 }
  end
end

class RPNCalculator
  include RPNFunctions
  include WithSymbols

  attr_reader :rpn_holder
  attr_accessor :value

  def initialize
    @rpn_holder = []
  end

  def push(number)
    @rpn_holder << number
  end

  def calculate
    raise "calculator is empty" if @rpn_holder.empty?

    num1, num2 = @rpn_holder.pop, @rpn_holder.pop
    @rpn_holder << (yield num1, num2)
    @value = @rpn_holder.last
  end
end