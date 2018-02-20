module Luhn
  def self.is_valid?(number)
    account_numbers = number.to_s.reverse.split('').map do |number_element|
      number_element.to_i
    end
    account_numbers = account_numbers.map.with_index do |number_element, index|
      if index.odd?
        number_element * 2
      else
        number_element
      end
    end
    puts account_numbers.inspect
    account_numbers = account_numbers.map do |number_element|
      if number_element >= 10
        number_element - 9
      else
        number_element
      end
    end
    (account_numbers.inject(0) { |sum, int| sum + int } % 10).zero?
  end
end
