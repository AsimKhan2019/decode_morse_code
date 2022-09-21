# First we create a global variable to store the morse codes
@morse_dict = { '.-' => 'A', '-...' => 'B', '---' => 'O', '-..-' => 'X', '..-.' => 'F', '..-' => 'U', '.-..' => 'L', '.-.' => 'R',  '..' => 'I', '.' => 'E', '...' => 'S' }
# We will first check if the letters are getting via the function call
def get_singleLetter(letter)
  @singleLetter = @morse_dict[letter]
  @singleLetter
end
# We create another method this time to get the complete word 
def decode_theword(word)
  @letters = word.split
  @currentword = ''
  @letters.each do |letter|
    @currentword += get_singleLetter(letter)
  end
  print "#{@currentword} "
end
# We create another function to make all the words come together to make a single sentence
def decode_finalMessage(message)
  @words = message.split('   ')
  @words.each do |word|
    decode_theword(word)
  end
end
decode_finalMessage('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
