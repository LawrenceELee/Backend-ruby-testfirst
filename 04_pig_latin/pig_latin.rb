#write your code here


=begin
def translate_1_word( str )

  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  phoneme = []      # empty array to hold phonemes temp
  conconants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

  letters = str.split("")

  if vowels.include? letters[0]
    # starts with a vowel
    # just append "ay"
    # starts with case phoneme

    str = letters.join()
    str << "ay"

  
  # these elsif is very hackish
  # regular expressions would be very useful in this situation to extract and append
  else

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
=end



def translate_1_word(sentence)
  sentence = sentence.downcase

  # array can remove duplicates using subraction?!
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  words = sentence.split(' ')
  result = []

  words.each_with_index do |word, i|
    translation = ""
    qu_flag = false

    if vowels.include? word[0]
      translation = word + 'ay'
      result.push(translation)

    else
      letters = word.split('')
      count = 0

      letters.each_with_index do |char, index|
        if vowels.include? char

          # handle words that start with 'qu' (like quiet)
          if char == 'u' and translation[-1] == 'q'
            qu_flag = true
            translation = words[i][count + 1..words[i].length] + translation + 'uay'
            result.push(translation)
            next
          end
          break
        else

          # handle words with 'qu' in middle (like "square")
          if char == 'q' and letters[i+1] == 'u'
            qu_flag = true
            translation = words[i][count + 2..words[i].length] + 'quay'
            result.push(translation)
            next
          else
            translation += char
          end
          count += 1
        end
      end
     
      # translation of consonant words without qu
      # normal word that starts with 1 consonant without any phoneme
      if not qu_flag
        translation = words[i][count..words[i].length] + translation + 'ay'
        result.push(translation)
      end

    end

  end

  result.join(' ')
end

def translate( *words )
  words_array = words[0].split(" ")

  # map turns array into array
  pig_latin_words_array = words_array.map { |one_word| translate_1_word(one_word) }

  # reduce turns array into scalar
  result = pig_latin_words_array.reduce("") { |acc, elmt| acc << " #{elmt}" }
  result.strip

end
