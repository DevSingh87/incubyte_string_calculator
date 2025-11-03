require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself if only one number is given' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns sum of two comma-separated numbers' do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it 'handles an unknown amount of numbers' do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end
  end
end
