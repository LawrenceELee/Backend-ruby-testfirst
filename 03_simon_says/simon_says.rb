#write your code here

def echo( str )
  return str
end

def shout( str )
  return str.upcase()
end

def repeat( str, num=1 )

  result = ""
  result << str
  
  (1..num).each { |dummy_var| result << " #{str}" }
  
  return result
end
