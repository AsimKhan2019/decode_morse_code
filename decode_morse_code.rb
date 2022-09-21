# First we create a global variable to store the morse codes

@morse_dict = { ".-" => "A", "-..." => "B", "---" => "O", "-..-" => "X", "..-." => "F", "..-" => "U", ".-.." => "L", ".-." => "R",  ".." => "I", "." => "E", "..." => "S" }

# We will first check if the letters are getting via the function call
# We will create a function to get the letter first 


# We created another global variable @singleLetter
# We are passing in the letter as an argument into the method / function 
# We are getting the letter from the index of @morse_dict

def get_singleLetter(letter)
  @singleLetter = @morse_dict[letter]
  @singleLetter
end

# We create another method this time to get the complete word 
# We will call the previous get letter method and concatenate all the words together 
# We will get the single word using do loop going through each letter 
# Later concatenating all the letters together to make a single word 

def decode_theword(word)
  @letters = word.split
  @currentword = ''
  @letters.each do |letter|
    @currentword += get_singleLetter(letter)
  end
  print "#{@currentword} "
end

# We create another function to make all the words come together to make a single sentence
# Using the global variables in this function like the previous we will get the single words 
# Then complete it to make a single sentence 

def decode_finalMessage(message)
  @words = message.split('   ')
  @words.each do |word|
    decode_theword(word)
  end
end

decode_finalMessage('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
