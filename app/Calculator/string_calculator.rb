# frozen_string_literal: true

require_relative 'base'
module Calculator
  # this module inherits from base and is used to define the string calculator
  class StringCalculator < Base
    attr_reader :test_string

    def initialize(string)
      @test_string = string
    end

    def add
      return 0 if test_string.empty?

      numbers = test_string.split(/[\n,]/).map(&:to_i)
      raise CalculationError, 'negatives not allowed' if numbers.any?(&:negative?)

      numbers.sum
    end
  end
end
