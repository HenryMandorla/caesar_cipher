# frozen_string_literal: true

def caesar_cipher(string, number)
  return nil if string == ''

  alphabet = ('a'..'z').to_a
  string_lower = string.downcase
  char_array = string_lower.split('')
  new_chars = char_array.map do |char|
    if alphabet.include?(char)
      index = alphabet.index(char)
      shifted_char = alphabet[(index - number) % 26]
      shifted_char
    else
      char
    end
  end
  new_chars.join('')
end

puts caesar_cipher('cowpoke', 5)
