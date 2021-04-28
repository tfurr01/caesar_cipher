puts "Plain text: "
plaintext = gets.chomp.split("")
puts "Key: "
key = gets.chomp.to_i

def caesar_cipher (plaintext, key)
  plaintext.map { |letter|
		if is_letter(letter)
      if letter == letter.upcase
				((((letter.ord + key) - 65) % 26) + 65).chr
      else
				((((letter.ord + key) - 97) % 26) + 97).chr
			end
		else
			letter
		end
	}
end

def is_letter (char)
	char.ord.between?(65, 90) || char.ord.between?(97, 122)
end

puts caesar_cipher(plaintext, key).join