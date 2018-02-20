module Luhn
  def self.number_to_reverse_digits(credit_card_number)
    credit_card_number.to_s.reverse.split('').map(&:to_i)
  end

  def self.double_odd_digits(digits)
    digits.each_with_index.map do |digit, index|
      if index.odd?
        digit * 2
      else
        digit
      end
    end
  end

  def self.adjust_less_than_10(digits)
    digits.map do |digit|
      if digit >= 10
        digit - 9
      else
        digit
      end
    end
  end

  def self.sum_of_digits(digits)
    digits.inject(0) { |sum, int| sum + int }
  end

  def self.is_valid?(credit_card_number)
    digits = number_to_reverse_digits(credit_card_number)
    digits = double_odd_digits(digits)
    digits = adjust_less_than_10(digits)
    sum = sum_of_digits(digits)
    (sum % 10).zero?
  end
end
