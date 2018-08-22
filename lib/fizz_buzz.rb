require "fizz_buzz/version"

module FizzBuzz
  class << self
    FIZZ_MULTIPLIER = 3
    BUZZ_MULTIPLIER = 5

    def fizz?(n)
      n % FIZZ_MULTIPLIER == 0
    end

    def buzz?(n)
      n % BUZZ_MULTIPLIER == 0
    end
  end
end
