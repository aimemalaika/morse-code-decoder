def decode_morse_code()
  morsecode = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-', '.-..', '--', '-.', '---',
               '.--.', '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..']
  morsevalues = %w[a b c d e f g h i j k l m n o p q r s t
                   u v w x y z]
  puts "Enter a word to translate to morse code \n e.g: .-   -... --- -..-   ..-. ..- .-.. .-..
--- ..-.   .-. ..- -... .. . ..."
  code = gets.chomp
  code_array = code.split('  ')
  string = ''
  code_array.each do |word|
    word_array = word.split
    word_array.each do |letter|
      string += morsevalues[morsecode.index(letter)]
    end
    string += ' '
  end
  "The translated code is:\n ====> #{string}"
end

i_have_a_message = true

while i_have_a_message
  puts decode_morse_code
  puts 'Would you like to translate another message? (y/n)'
  i_have_a_message = gets.chomp == 'y'
end

puts 'Goodbye!'
