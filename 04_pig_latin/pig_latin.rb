#write your code here


def translate_1_word( str )

  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  phoneme = ["sch", "qu"]

  letters = str.split("")

  if vowels.include? letters[0]
    # starts with a vowel
    # just append "ay"
    # starts with case phoneme

    str = letters.join()
    str << "ay"

  
  # these elsif is very hackish
  # regular expressions would be very useful in this situation to extract and append
=begin
  elsif phoneme.include? letters[0,2].join()      #2 letter phonemes
    letter = letters.unshift()
    letters.push(letter)

    letter = letters.unshift()
    letters.push(letter)


  elsif phoneme.include? letters[0,3].join()      #3 letter phonemes
    letter = letters.unshift()
    letters.push(letter)

    letter = letters.unshift()
    letters.push(letter)

    letter = letters.unshift()
    letters.push(letter)
=end
  else
    # starts with only 1 consonant

    first_letter = letters.shift()
    until vowels.include? first_letter
      letters.push(first_letter)
      first_letter = letters.shift()
    end

    # we have to put the vowel back...this is kind of hackish
    letters.unshift(first_letter)

    str = letters.join()
    str << "ay"
  end

  return str
end


def translate( *words )
  # map turns array into array
  pig_latin_words_array = words.map { |word| translate_1_word(word) }

  # reduce turns array into scalar
  result = pig_latin_words_array.reduce("") { |acc, elmt| acc << " #{elmt}" }
  result.strip

end
