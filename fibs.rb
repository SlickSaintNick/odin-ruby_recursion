# frozen_string_literal: true

def fibs(num, array = [0, 1])
  if num.zero?
    nil
  elsif num == 1
    [a.first]
  else
    2.upto(num - 1).each { |index| array.push(array[index - 2] + array[index - 1]) }
    array
  end
end

def fibs_rec(num, array = [])
  if num == 1
    array.unshift(0)
  elsif num == 2
    array.unshift(1)
    fibs_rec(num - 1, array)
  else
    fibs_rec(num - 1, array)
    array.push(array[num - 3] + array[num - 2])
  end
  array
end

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(5)
p fibs(8)
p fibs(15)

p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(5)
p fibs_rec(8)
p fibs_rec(15)
