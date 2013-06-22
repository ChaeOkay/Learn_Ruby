require "pig_latin"

describe "#translate" do

# Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase

  it "translates capitalized words" do
    s = translate("Many Different Foxes")
    s.should == "Anymay Ifferentday Oxesfay"
  end

  it "retains original puctuation" do
    s = translate("That's true. No way. Apples.")
    s.should == "At'say uetray. Onay ayway. Applesay."
  end
end
