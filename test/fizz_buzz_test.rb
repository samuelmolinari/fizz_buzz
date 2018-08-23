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

  def test_conversion_of_number_to_buzz
    FizzBuzz.stub :buzz?, true do
      assert_equal 'Buzz', FizzBuzz.convert(5)
    end

    FizzBuzz.stub :buzz?, false do
      refute_equal 'Buzz', FizzBuzz.convert(5)
    end
  end

  def test_conversion_of_number_to_fizz_buzz
    FizzBuzz.stub :buzz?, true do
      FizzBuzz.stub :fizz?, true do
        assert_equal 'FizzBuzz', FizzBuzz.convert(15)
      end
    end
  end

  def test_lack_of_conversion
    FizzBuzz.stub :buzz?, false do
      FizzBuzz.stub :fizz?, false do
        assert_equal '1', FizzBuzz.convert(1)
      end
    end
  end

  def test_range_conversion
    assert_equal %w[
      1
      2
      Fizz
      4
      Buzz
      Fizz
      7
      8
      Fizz
      Buzz
      11
      Fizz
      13
      14
      FizzBuzz
    ], FizzBuzz.list(1..15)
  end

  def test_solution
    assert_equal %w[
      1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz
      11 Fizz 13 14 FizzBuzz 16 17 Fizz 19 Buzz
      Fizz 22 23 Fizz Buzz 26 Fizz 28 29 FizzBuzz
      31 32 Fizz 34 Buzz Fizz 37 38 Fizz Buzz
      41 Fizz 43 44 FizzBuzz 46 47 Fizz 49 Buzz
      Fizz 52 53 Fizz Buzz 56 Fizz 58 59 FizzBuzz
      61 62 Fizz 64 Buzz Fizz 67 68 Fizz Buzz
      71 Fizz 73 74 FizzBuzz 76 77 Fizz 79 Buzz
      Fizz 82 83 Fizz Buzz 86 Fizz 88 89 FizzBuzz
      91 92 Fizz 94 Buzz Fizz 97 98 Fizz Buzz
    ], FizzBuzz.list(1..100)
  end
end
