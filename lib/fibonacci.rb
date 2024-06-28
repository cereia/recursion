# frozen_string_literal: true

# iterative fibonacci
def fibs(num)
  fibs = [0, 1]
  if num <= 0
    fibs = []
  elsif num == 1
    fibs = [fibs[0]]
  else
    fibs.push(fibs[fibs.length - 1] + fibs[fibs.length - 2]) while fibs.length < num
  end
  fibs
end

# recursive fibonacci
def fibs_rec(num, fibs = [])
  if num <= 0
    []
  elsif num == 1
    fibs << 0
  elsif num == 2
    fibs << 0 << 1
  else
    fibs_rec(num - 1, fibs)
    fibs << fibs[-1] + fibs[-2]
  end
end

# p fibs(8)
# p fibs(0)
# p fibs(2)
# p fibs(1)
# p fibs(-10)

# p '--------'

p fibs_rec(8)
# p fibs_rec(0)
# p fibs_rec(2)
# p fibs_rec(1)
# p fibs_rec(-10)
