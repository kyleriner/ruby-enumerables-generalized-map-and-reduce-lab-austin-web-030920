# Your Code Here

def map(array)
  numbers = []
  i = 0
  while i < array.length
    numbers.push(yield(array[i]))
    i += 1
  end
  return numbers
end


def reduce(array, opt = nil)
  if opt
    total = opt
    i = 0
  else
    total = opt[0]
    i = 1
  end
  
  while i <array.length
    total = yield(sum, array[i])
    i += 1
  end
  return total
end