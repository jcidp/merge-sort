# frozen_string_literal: true

def fibs(number)
  n0 = 0
  n1 = 1
  arr = []
  number.times do
    arr << n0
    n0, n1 = n1, n0 + n1
  end
  arr
end

p fibs(8)

def fibs_rec(number)
  return [0] if number == 1
  return [0, 1] if number == 2

  arr = fibs_rec(number - 1)
  arr << (arr[-1] + arr[-2])
end

p fibs_rec(8)
