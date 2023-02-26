def phone_validator(phone_number)
  phone_regex = /^\(\d{2}\)\s\d\s\d{4}-\d{4}$/

  if phone_regex.match?(phone_number)
    puts 'Número de telefone válido!'
  else
    puts 'Número de telefone inválido!'
  end
end

puts 'Digite um número de telefone (exemplo: (99) 9 9999-9999'
phone_number = gets.chomp
phone_validator(phone_number)
