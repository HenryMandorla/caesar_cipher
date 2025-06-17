def caesar_cipher(string, number)
    if string == ""
        puts "Nothing entered"
    else
    alphabet = ('a'..'z').to_a
    string_lower = string.downcase
    char_array = string_lower.split("")
    new_chars = char_array.map do |char|
        if alphabet.include?(char)
            index = alphabet.index(char)
            shifted_char = alphabet[(index - number) % 26]
            shifted_char
            else
                char
            end
        end
    new_string = new_chars.join("")
    return new_string
    end
end

puts caesar_cipher('cowpoke', 5)