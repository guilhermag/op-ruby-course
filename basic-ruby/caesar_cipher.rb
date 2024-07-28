def caesar_cipher(str, number)
  alphabet = ('a'..'z').to_a
  result = ""
  str.each_char do |char|
    if (char != ' ')
      is_upcase = char == char.upcase
      index = alphabet.index(char.downcase)
      if (index == nil)
        result += char
      else
        if (index + number > alphabet.length - 1)
          index = (index + number) - alphabet.length;
          puts index
        else
          index = index + number
        end
        cipher_letter = alphabet[index]
        result += is_upcase ? cipher_letter.upcase : cipher_letter
      end
    else
      result += ' '
    end

  end
  # str.each_char { |char| puts char }
  puts result
end

caesar_cipher("What a string!", 5)
