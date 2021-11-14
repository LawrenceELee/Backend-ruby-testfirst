#write your code here

def echo( str )
  str
end

def shout( str )
  str.upcase()
end

def repeat( str, num=2 )

  # it is a good idea to use the language built-ins to accomplish tasks
  # like the "*" operator works to repeat strings, and strip to remove the last space char
  ("#{str} " * num).strip

=begin
  result = ""
  (1..num).each { |dummy_var| result << " #{str}" }
  result.strip
=end
end

def start_of_word( str, idx )
  str[0, idx]
end

def first_word( str )
  # splits the string on the space and creates an array with each element being 1 word, then pick the 1st word

  str.split(" ")[0]
end

def titleize( str )
  result = ""

  little_words = ["and", "over", "the"]

  # can use regular expressions to tokenize based on spaces
  # or use the split() method on spaces

  words_array = str.gsub(/\s+/m, ' ').gsub(/^\s+|\s+$/m, '').split(" ")
  # the gsub is not necessary. it is extra in case there are more than 1 whitespace on several lines separating words
  # gsub replaces all the different whitespaces with 1 single space

  # map doesn't change the original, but map with bang "!" will change the original


  # if the word is not "the", "and", "over", etc. then map capitalize function on it, if is a little_word leave it alone
  capital_words = words_array.map { |word| 
    if not little_words.include? word
      word.capitalize
    else
      word
    end
  }
  

  
  result = capital_words.join(" ")

  # always capitalize the first letter of the first word
  result[0] = result[0].capitalize

  return result

end
