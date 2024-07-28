def substrings(str, dict)
  result = Hash.new
  str_array = str.split(' ')
  str_array.each do |word|
    dict.each do |dict_word|
      if ((word.upcase).include?(dict_word.upcase))
        if (result.dig(dict_word) == nil)
          result[dict_word] = 0
        end
        result[dict_word] += 1
      end
    end
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
