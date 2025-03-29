# frozen_string_literal: true

require_relative 'base'
module Calculator
  # this module inherits from base and is used to define the string calculator
  class StringCalculator < Base
    attr_reader :input, :parsed_input_array

    def initialize(input)
      super
    end  

    def add
      return 0 if @input.empty?
      # raise CalculationError, 'negatives not allowed' if numbers.any?(&:negative?)
      @parsed_input_array.sum
    end
  end
end
