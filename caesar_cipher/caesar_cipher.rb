def shift_ord(ordinal, shift_factor, is_upcase)
    shifted = ordinal + shift_factor
    if (is_upcase && shifted > 90) || ((!is_upcase) && shifted > 122)
        shifted -= 26
    end
    shifted
end

def caesar_cipher(string, shift_factor)
    shift_factor = shift_factor % 26
    
    encoded = string.codepoints.map do |char_ord|
        if char_ord.between?(65, 90)
            shift_ord(char_ord, shift_factor, true).chr

        elsif char_ord.between?(97, 122)
            shift_ord(char_ord, shift_factor, false).chr

        else
            char_ord.chr
        end
    end.join("")
end

p caesar_cipher("What a string!", 5)