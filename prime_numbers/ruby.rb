class PrimeNumber
  BASE_NUMBER = 2

  attr_reader :numbers

  def initialize
    @numbers = [BASE_NUMBER]
  end

  def search max_number
    (@numbers.first + 1).upto(max_number).each do |target_number|
      @numbers << target_number if is_divisible?(target_number)
    end
  end

  private

  def is_divisible? target_number
    @numbers.all? { |number| target_number % number != 0 }
  end
end

puts 'Please enter the number'
number = gets.to_i
puts "Let's find Prime Numbers"

p = PrimeNumber.new
p.search(number)
puts "Prime Number: #{p.numbers.join(', ')}"
