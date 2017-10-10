class Hanoi
  POLES = [
    POLE_LEFT   = 'LEFT',
    POLE_CENTER = 'CENTER',
    POLE_RIGHT  = 'RIGHT',
  ]

  def initialize disks
    @disks = disks
  end

  def solve
    return if @disks.zero?
    hanoi(@disks, POLE_LEFT, POLE_CENTER, POLE_RIGHT)
  end

  private

  def hanoi disks, pole_a, pole_b, pole_c
    return if disks.zero?

    hanoi(disks - 1, pole_a, pole_c, pole_b)
    puts "#{pole_a} => #{pole_b}"
    hanoi(disks - 1, pole_c, pole_b, pole_a)
  end
end

puts 'Please enter the number of disks'
disks = gets.to_i
puts "Let's solve Tower of Hanoi"

Hanoi.new(disks).solve

