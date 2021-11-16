class Book

  # constructor method that takes 1 parameter
  # we don't need it for the rspec.rb because it creates a book without constructor
=begin
  def initialize(my_title)
    @title = my_title
  end
=end

  # setter, the style is to end the method name with a "=" equals sign
  def title=(my_title)
    @title = titleize(my_title)
  end

  # getter
  def title
    # the return statement is implied in Ruby when it is the last line of method
    # returns the instance variable @title
    @title
  end


  def titleize(my_title)
    little_words = ["a", "and", "the", "over", "an", "in", "of"]

    #my_title.split.map(&:capitalize).join(' ')
    result = my_title.split.map{ |a_word_in_title| 
      if not little_words.include? a_word_in_title    # if word is not in little_words
        a_word_in_title.capitalize                    # then apply capitalize function on the word
      else
        a_word_in_title                               # do nothing and put word back into array
      end
    }.join(' ')                                       # finally, join the array into a string with spaces

    # always capitalize the first word in the title regardless of what kind of word it is
    result[0] = result[0].upcase


    # finally return the title
    return result

    


=begin
    my_title_array = my_title.split()
    my_title_array.select { |a_word_in_title| 
      if little_words.include? a_word_in_title
        a_word_in_title
      else
        a_word_in_title.capitalize
      end
    }.join(" ")
=end

  end

end

