class PrimeNumber:
  def __init__(self, max_number):
    self.max_number = max_number + 1
    self.prime_numbers = [2]

  def search(self):
    for num in range((self.prime_numbers[0] + 1), self.max_number):
      if self.is_divisible(num):
        self.prime_numbers.append(num)

  def is_divisible(self, number):
    for prime_number in self.prime_numbers:
      if number % prime_number == 0:
        return False
    else:
      return True

print('Please enter the number')
number = input('>> ')
print("Let's find Prime Numbers")

p = PrimeNumber(int(number, 10))
p.search()
print('Prime Numbers: {}'.format(list(p.prime_numbers)))
