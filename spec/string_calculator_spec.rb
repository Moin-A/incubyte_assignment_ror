# frozen_string_literal: true

require 'rspec'
require_relative '../app/calculator'

RSpec.describe Calculator::StringCalculator do
  let(:calculator) { described_class.new(string) }

  context 'when the string is empty' do
    let(:string) { '' }
    it 'returns 0 for an empty string' do
      expect(calculator.add).to eq(0)
    end
  end

  context 'when the string contains a single number' do
    let(:string) { '1' }
    it 'returns the number itself when a single number is provided' do
      expect(calculator.add).to eq(1)
    end
  end
  context 'when the string contains multiple numbers' do
    let(:string) { '1,2,3' }
    it 'returns the sum of multiple numbers separated by commas' do
      expect(calculator.add).to eq(6)
    end
  end

  context 'when the string contains new lines as delimiters' do
    let(:string) { "1\n2,3" }
    it 'handles new lines as delimiters along with commas' do
      expect(calculator.add).to eq(6)
    end
  end

  context 'supports custom delimiters specified at the beginning of the string' do
    let(:string) { "//;\n1;2" }
    it 'supports custom delimiters specified at the beginning of the string' do
      expect(calculator.add).to eq(3)
    end
  end

  context 'when the string contains negative numbers' do
    let(:string) { '1,-2,-3' }

    it 'throws an exception when a negative number is provided' do
      expect { calculator.add }.to raise_error(Calculator::CalculationError, 'negatives not allowed: -2, -3')
    end
  end

  it 'throws an exception listing all negative numbers if multiple are provided' do
  end
end
