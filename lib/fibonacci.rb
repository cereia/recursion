# frozen_string_literal: true

# iterative fibonacci
def fibs_iterative(num)
  fibs = [0, 1]
  if num.zero?
    fibs = [fibs[0]]
  else
    fibs.push(fibs[fibs.length - 1] + fibs[fibs.length - 2]) while fibs.length < num
  end
  fibs
end

# p fibs_iterative(8)
# p fibs_iterative(0)
# p fibs_iterative(1)
# p fibs_iterative(3)
# p fibs_iterative(10)
