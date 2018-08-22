require "fizz_buzz/version"

module FizzBuzz
  class << self
    FIZZ_MULTIPLIER = 3
    BUZZ_MULTIPLIER = 5
    FIZZ_OUTPUT = 'Fizz'
    BUZZ_OUTPUT = 'Buzz'

    def fizz?(n)
      n % FIZZ_MULTIPLIER == 0
    end

    def buzz?(n)
      n % BUZZ_MULTIPLIER == 0
    end

    def convert(n)
      output = ''
      output += FIZZ_OUTPUT if fizz?(n)
      output += BUZZ_OUTPUT if buzz?(n)

      output
    end
  end
end
