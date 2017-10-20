class Eratosthene
  BASE_NUMBER = 2

  def initialize max_number
    @square_root  = Math.sqrt(max_number).to_i
    @search_list  = (BASE_NUMBER..max_number).to_a
  end

  def sieve
    search(@search_list, [])
  end

  private

  def search search_list, prime_list
    first_number = search_list.first
    prime_list << first_number
    search_list -= search_list.select { |number| number % first_number == 0 }
    return prime_list.concat(search_list) if first_number > @square_root

    search(search_list, prime_list)
  end
end

puts 'Please enter the number'
number = gets.to_i
puts "Let's find Prime Numbers using Sieve of Eratosthene"

puts "Prime Number: #{Eratosthene.new(number).sieve}"
