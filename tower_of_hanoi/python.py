class Hanoi:
  def __init__(self, disks):
    self.disks = disks

    self.__poleLeft = 'LEFT'
    self.__poleCenter = 'CENTER'
    self.__poleRight = 'RIGHT'

  def solve(self):
    if (self.disks):
      self.hanoi(self.disks, self.__poleLeft, self.__poleCenter, self.__poleRight)

  def hanoi(self, disks, pole_a, pole_b, pole_c):
    if (disks):
      self.hanoi(disks - 1, pole_a, pole_c, pole_b)
      print 'Move: {0} => {1}'.format(pole_a, pole_b)
      self.hanoi(disks - 1, pole_c, pole_b, pole_a)

print 'Please enter the number of disks'
disks = raw_input('>> ')
print "Let's solve Tower of Hanoi"

h = Hanoi(int(disks, 10))
h.solve()
