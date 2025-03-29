require 'rspec'
require_relative '../app/StringCalculator.rb'

RSpec.describe StringCalculator do
  describe '#initialize' do
    it 'creates a user with a name and email' do
      user = StringCalculator.new('John Doe', 'john@example.com')
      expect(user.name).to eq('John Doe')
      expect(user.email).to eq('john@example.com')
    end
  end

  describe '#greet' do
    it 'returns a greeting message' do
      user = StringCalculator.new('John Doe', 'john@example.com')
      expect(user.greet).to eq('Hello, John Doe!')
    end
  end
end