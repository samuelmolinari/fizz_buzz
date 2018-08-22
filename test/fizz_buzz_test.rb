require "test_helper"

class FizzBuzzTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FizzBuzz::VERSION
  end

  def test_fizz_matcher_is_true_on_multiples_of_3
    assert FizzBuzz.fizz?(3)
    assert FizzBuzz.fizz?(6)
    assert FizzBuzz.fizz?(9)
    assert FizzBuzz.fizz?(15)

    refute FizzBuzz.fizz?(1)
    refute FizzBuzz.fizz?(2)
    refute FizzBuzz.fizz?(5)
    refute FizzBuzz.fizz?(13)
  end
end
