# frozen_string_literal: true

# this is the base class for the calculator module
module Calculator
  class CalculationError < StandardError; end

  class Base
    def initialize(input)
      @input = input
      parse_input_array if input.is_a?(String)
    end

    def parse_input_array
      @parsed_input_array ||= @input.split(/[\n,]/).map(&:to_i)
    end
  end
end
