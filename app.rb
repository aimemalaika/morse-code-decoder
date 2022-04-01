def decode_morse_code()
    morsecode = [  ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.." ] 
    morsevalues = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    puts "Enter a word to translate to morse code \n e.g: .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...";
    code = gets.chomp;
    code_array = code.split("  ");
    string = "";
    code_array.each do |word|
        word_array = word.split(" ");
        word_array.each do |letter|
            string += morsevalues[morsecode.index(letter)];
        end
        string += " ";
    end
    return "The translated code is:\n ====> #{string}";
end

iHaveAMessage = true;

while iHaveAMessage
    puts decode_morse_code();
    puts "Would you like to translate another message? (y/n)";
    iHaveAMessage = gets.chomp == "y";
end

puts "Goodbye!";