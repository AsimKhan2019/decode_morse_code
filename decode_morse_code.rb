@morse_dict = { '.-' => 'A', '-...' => 'B', '---' => 'O', '-..-' => 'X', '..-.' => 'F', '..-' => 'U', '.-..' => 'L', '.-.' => 'R',  '..' => 'I', '.' => 'E', '...' => 'S' }

def get_single_letter(letter)
  @singleLetter = @morse_dict[letter]
  @singleLetter
end

def decode_theword(word)
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
    decode_theword(word)
  end
end
decode_final_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
