class RPNCalculator
  attr_reader :rpn_holder
  attr_accessor :value

  def initialize
    @rpn_holder = []
  end

  def push(number)
    @rpn_holder << number
  end

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

  private

  def calculate
    raise "calculator is empty" if @rpn_holder.empty?

    num1, num2 = @rpn_holder.pop, @rpn_holder.pop
    @rpn_holder.push( yield num1, num2)
    @value = @rpn_holder.last
  end
end