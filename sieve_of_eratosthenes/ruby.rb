class PrimeNumber
  BASE_NUMBER = 2

  def initialize max_number
    @max_number = Math.sqrt(max_number).to_i
    @candidates = (BASE_NUMBER..max_number).to_a
  end

  def search
    BASE_NUMBER.upto(@max_number).each do |num|
      @candidates -= @candidates[1..-1].select { |candidate| candidate % num == 0 }
    end
    @candidates
  end
end

puts 'Please enter the number'
number = gets.to_i
puts "Let's find Prime Numbers"

puts "Prime Number: #{PrimeNumber.new(number).search.join(', ')}"
