class FibonacciSequence
  attr_reader :numbers

  def initialize n_th
    @n_th    = n_th
    @numbers = []
    @n_th == 0 ? (@numbers << 0) : (@numbers << 0 << 1)
  end

  def generate
    return if @n_th < 2
    (@n_th - 1).times do |n|
      @numbers << (@numbers[n] + @numbers[n + 1])
    end
  end
end

puts 'How many generate Fibonacci Number?'
puts 'Please enter the n-th'
n_th = gets.to_i
puts "Let's generate Fibonacci Number"

f = FibonacciSequence.new(n_th)
f.generate

puts "Fibonacci Numbers: #{f.numbers.join(', ')}"
