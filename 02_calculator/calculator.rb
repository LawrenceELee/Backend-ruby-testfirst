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



















# ruby doesn't support method overloading. have to fix implementation of multiply
def multiply( num1 =1, num2 =1, *nums )
  num_of_params = method(:multiply).parameters    # this returns an array of the params

  if num_of_params.length == 2
    num1 * num2
  else
    num1 * num2 * nums.reduce(1) { |acc, elmt| acc * elmt }
  end


=begin
  result = 1
  nums.each do |num|
    result *= num
  end
  return result
=end
end













=begin
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

