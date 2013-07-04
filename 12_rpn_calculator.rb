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
    @rpn_holder.push( @rpn_holder.pop + @rpn_holder.pop )
    @value = @rpn_holder.last
  end

  def minus
    num1, num2 = @rpn_holder.pop, @rpn_holder.pop
    @rpn_holder.push( num1 - num2 )
    @value = @rpn_holder.last
  end

  def divide
  end
end