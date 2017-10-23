class PrimeNumber
  BASE_NUMBER = 2

  def initialize max_number
    @max_number  = max_number
    @candidates  = [BASE_NUMBER]
  end

  def search
    (@candidates.first + 1).upto(@max_number).each do |number|
      @candidates << number if is_divisible?(number)
    end
    @candidates
  end

  private

  def is_divisible? number
    @candidates.all? { |candidate| number % candidate != 0 }
  end
end

puts 'Please enter the number'
number = gets.to_i
puts "Let's find Prime Numbers"

puts "Prime Number: #{PrimeNumber.new(number).search}"
