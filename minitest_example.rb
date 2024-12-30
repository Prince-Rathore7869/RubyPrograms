require "minitest/autorun"

class MyTest < Minitest::Test
  def test_addition
    result = 2 + 3
    assert_equal 5, result  # Check if result equals 5
  end
end


#This uses the Spec style but have to create the no. comaprion class and also explain the assert working
# describe "Number Comparison" do
#   it "checks if a number is positive" do
#     (5 > 3).must_equal true  # Passes because 5 is greater than 3
#   end

#   it "fails for incorrect conditions" do
#     (5 < 3).must_equal true  # Fails because 5 is not less than 3
#   end
# end

