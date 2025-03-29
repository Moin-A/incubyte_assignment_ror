# frozen_string_literal: true

require_relative 'base'
module Calculator
  # this module inherits from base and is used to define the string calculator
  class StringCalculator < Base
    def initialize(name, email)
      super
      @name = name
      @email = email
    end

    attr_reader :name, :email

    def greet
      "Hello, #{@name}!"
    end
  end
end
