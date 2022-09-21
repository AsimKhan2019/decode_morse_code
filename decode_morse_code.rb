@morse_dict = { '.-' => 'A', '-...' => 'B', '---' => 'O', '-..-' => 'X', '..-.' => 'F', '..-' => 'U', 
                '.-..' => 'L', '.-.' => 'R',  '..' => 'I', '.' => 'E', '...' => 'S' }
def get_single_letter(letter)
  @single_letter = @morse_dict[letter]
  @single_letter
end

def decode_the_word(word)
  @letters = word.split
  @currentword = ''
  @letters.each do |letter|
    @currentword += get_single_letter(letter)
  end
  print "#{@currentword} "
end

def decode_final_message(message)
  @words = message.split('   ')
  @words.each do |word|
    decode_the_word(word)
  end
end
decode_final_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
