require 'spec_helper'

RSpec.describe Luhn, type: :model do
  describe '.number_to_reverse_digits' do
    it 'converts to an array of digits' do
      expect(Luhn.number_to_reverse_digits(123)).to eq [3, 2, 1]
    end
  end

  describe '.is_valid?' do
    it 'should return true if the number is valid' do
      expect(Luhn.is_valid?(4194560385008504)).to eq true
    end

    it 'should return false if the number is not valid' do
      expect(Luhn.is_valid?(4194560385008505)).to eq false
    end


    # some credit cards are 15 digits
    # these tests confirm the code is
    # starting on the right side not the
    # left side
    it 'should return true if the number is valid and the number has an odd number of digits' do
      expect(Luhn.is_valid?(377681478627336)).to eq true
    end

    it 'should be return false if the number is not valid and the number has an odd number of digits' do
      expect(Luhn.is_valid?(377681478627337)).to eq false
    end
  end
end
