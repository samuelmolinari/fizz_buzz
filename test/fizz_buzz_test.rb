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

  def test_buzz_matcher_is_true_on_multiples_of_5
    assert FizzBuzz.buzz?(5)
    assert FizzBuzz.buzz?(10)
    assert FizzBuzz.buzz?(15)

    refute FizzBuzz.buzz?(1)
    refute FizzBuzz.buzz?(3)
    refute FizzBuzz.buzz?(151)
  end

  def test_conversion_of_number_to_fizz
    FizzBuzz.stub :fizz?, true do
      assert_equal 'Fizz', FizzBuzz.convert(3)
    end

    FizzBuzz.stub :fizz?, false do
      refute_equal 'Fizz', FizzBuzz.convert(3)
    end
  end
end
