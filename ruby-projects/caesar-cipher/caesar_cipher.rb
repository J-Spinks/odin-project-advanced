def caesar_cipher(str, num)
  array_of_letters = str.split("")

  cipher = array_of_letters.map do |letter|
    letter_to_ord = letter.ord

    # encrypts lower case letters into
    if letter_to_ord >= 97 && letter_to_ord <= 122
      letter_to_ord += num
      if letter_to_ord > 122
        until letter_to_ord >= 97 && letter_to_ord <= 122
          letter_to_ord -= 26
        end
        letter_to_ord.chr
      end
      letter_to_ord.chr

      # encrypts upper case letters into
    elsif letter_to_ord >= 65 && letter_to_ord <= 90
      letter_to_ord += num
      if letter_to_ord > 90
        until letter_to_ord >= 65 && letter_to_ord <= 90
          letter_to_ord -= 26
        end
        letter_to_ord.chr
      end
      letter_to_ord.chr

    else
      letter_to_ord.chr
    end
  end
  cipher.join
end

 puts caesar_cipher("What a string!", 5)
