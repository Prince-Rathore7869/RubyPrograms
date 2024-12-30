require "minitest/autorun"

# class MyTest < Minitest::Test
#   def test_addition
#     result = 2 + 3
#     # Check if result equals 5
#     assert_equal 5, result  
#   end
# end

#This will show how the assert works
class TestExample < Minitest::Test
  def test_assert_true
    assert(5 > 3)  # Passes because the condition is true
  end

  def test_assert_false
    assert(5 < 3)  # Fails because the condition is false
  end
end
