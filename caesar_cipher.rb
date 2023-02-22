print 'Digite a mensagem a ser criptografada: '
message = gets.chomp

print 'Digite o número de posições a serem deslocadas: '
shift = gets.chomp.to_i

def caesar_cipher(message, shift)
  message.chars.map do |char|
    if char.match?(/[A-Za-z]/)
      shifted_char = char.ord + shift
      shifted_char -= 26 if shifted_char > (char.match?(/[A-Z]/) ? 'Z'.ord : 'z'.ord)
      shifted_char.chr
    else
      char
    end
  end.join
end

encrypted_message = caesar_cipher(message, shift)
puts "Mensagem criptografada: #{encrypted_message}"
