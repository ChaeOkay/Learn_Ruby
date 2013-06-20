=begin

Extra Credit Test-Driving Bonus:
once the above tests pass,
write tests and code for the following:

describe "#multiply" do

  it "multiplies two numbers"

  it "multiplies several numbers"

end

describe "#power" do
  it "raises one number to the power of another number"
end

describe "#factorial" do
  it "computes the factorial of 0"
  it "computes the factorial of 1"
  it "computes the factorial of 2"
  it "computes the factorial of 5"
  it "computes the factorial of 10"
end

=end

require "calculator"

describe "#multiply" do

  it "multiplies two numbers" do
    multiply(2,7).should == 14
  end

  it "multiplies several numbers" do
    multiply(1,2,5,3) == 30
  end
end

describe "#power" do
  it "raises one number to the power of another number" do
    power(5,3) == 125
  end
end

describe "#factorial" do
  it "computes the factorial of 0" do
    factorial(0) == 0
  end

  it "computes the factorial of 1" do
    factorial(1) == 1
  end

  it "computes the factorial of 2" do
    factorial(2) == 2
  end

  it "computes the factorial of 5" do
    factorial(5) == 15
  end

  it "computes the factorial of 10" do
    factorial(0) == 55
  end
end