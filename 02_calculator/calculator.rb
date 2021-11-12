#write your code here

def add( num1, num2)
  return num1 + num2
end

def subtract( num1, num2 )
  return num1 - num2
end

def sum( num_array )
  return num_array.reduce(0) { |accumulator, element| accumulator + element }
end


def multiply( num1, num2 )
  return num1 * num2
end

=begin
# ruby doesn't support method overloading. have to fix implementation of multiply
def multiply( nums )
  return nums.reduce(1) { |acc, elmt| acc * elmt }
end
=end

def power( base, exp )
  # 1 is the multiplicative identity
  result = 1
  is_neg = false

  return 1 if exp == 0

  # convert negative to positive
  is_neg = true if exp < 0
  exp *= -1 if exp < 0
  
  # math defines any base to 0 equals 1
  # will never enter loop
  for i in 1..exp do
    result *= base
  end

  # postive numbers
  if not is_neg
    return result
  else # negative numbers
    return 1.0 / result
  end
end

def factorial( num )
  return (1..num).reduce(1) { |acc, elmt|     acc *= elmt }
end

