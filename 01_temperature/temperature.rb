#write your code here

def ftoc( temp_f )

  # use round to round the tenths decimal place
  return ((temp_f - 32) / 1.8).round(1)

end

def ctof( temp_c )
  # use round to round the tenths decimal place
  return ((temp_c * 1.8) + 32).round(1)
end

