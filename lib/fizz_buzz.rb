require "fizz_buzz/version"

module FizzBuzz
  class << self
    FIZZ_MULTIPLIER = 3

    def fizz?(n)
      n % FIZZ_MULTIPLIER == 0
    end
  end
end
