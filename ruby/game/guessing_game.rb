# Class game
# Player 1 inputs a word. 
# Player 2 tries to guess that word

class GuessingGame


# method Initialize
# input: string from player one
# output: none
# Description: Initialize the game to have the secret string to refer to
#				and a wheel-of-fortune style display to show which guesses they got right
	def initialize(word)
		@word = word
		@ref_word = word.chars
		@guesses_so_far = Array.new
		@correct_guesses = Array.new(word.length, "_")
		
	end

#method get_guess_state
#input: none
#output: @correct_guesses
#Description: Return the current state of the correctly guessed letters

	def get_guess_state
		@correct_guesses
	end

#method get_past_guesses
#input: letter
#output: Boolean
#Description: check to see if the letter has been guessed 
#   		  and return true or false

	def guessed_already(letter)
		if @guesses_so_far.index(letter) != nil
			return true
		else
			@guesses_so_far << letter
			return false
		end
	end


# method guess
# input: Char from player two
# output: true if letter was not guessed already
#         nil if letter was not guessed already	  
# Description:

	def guess(letter)

		if guessed_already(letter) == true
			return true
		end

		@ref_word.each_index do |idx|
			
			if @ref_word[idx] == letter
				@correct_guesses[idx] = letter
				@ref_word[idx] = ""

			end

		end
	end


# method play
# input: Number of guesses player two has
# output: None
# Description: 	While player 2 still has guesses
#				and correct_guesses.index("_") != nil
#			 	Player 2 enters a character.
#				Game prints out current state of the guessed characters		

	def play(guesses)
		letter = ''

		guesses.times do |i|

			puts "you have #{guesses-i} guesses left"
			p @correct_guesses

			puts "\nGuess a letter"
			letter = gets.chomp
			if self.guess(letter) == true
				puts "You guessed that already!"
				redo
			else
				if @correct_guesses.index("_") == nil
					return "You win!"
				end
			end
		end

		return "The word was #{@word}.  Better luck next time!"

	end
end





puts "Player one - enter a word"
word = gets.chomp

game = GuessingGame.new(word)

100.times do 
	puts "\n"
end

puts "Player two - Guess the word!"

puts game.play((word.length * 0.6).ceil + 5)