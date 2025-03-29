# frozen_string_literal: true

require_relative 'base'
module Calculator
  # this module inherits from base and is used to define the string calculator
  class StringCalculator < Base
    attr_reader :input, :parsed_input_array

    def add
      return 0 if @input.empty?

      raise CalculationError, "negatives not allowed: #{negative_numbers.join(', ')}" if negative_numbers.any?

      @parsed_input_array.sum
    end

    private

    def negative_numbers
      @negative_numbers ||= @parsed_input_array.select(&:negative?)
    end
  end
end
