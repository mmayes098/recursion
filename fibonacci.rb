def fibs(num)
  sequence = [1, 1]
  if num > 2
    (2...num).each do |num1|
      sequence << sequence[num1 - 1] + sequence[num1 - 2]
    end
  end

  sequence[0...num]
end

def fibs_rec(num)
  return [1] if num == 1
  return [1, 1] if num == 2
  sequence = fibs_rec(num - 1)
  sequence << sequence[-2] + sequence[-1]
end

p fibs(5)
p fibs_rec(5)