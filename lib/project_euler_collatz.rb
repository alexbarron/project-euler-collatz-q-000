def even_next(n)
  n / 2
end

def odd_next(n)
  3 * n + 1
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  sequence = [n]
  while n != 1
    n = next_value(n)
    sequence << n
  end
  return sequence
end

def longest_collatz
  i = 999999
  longest_length = 0
  answer = 0
  while i > 1
    i_length = collatz(i).length
    if i_length > longest_length
      longest_length = i_length
      answer = i
    end
    i -= 1
  end
  return answer
end