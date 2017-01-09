#1. advance every letter of a string one letter forward 
#2. reverse every letter one spot back in the alphabet  


def encrypt(txt) 

	#get the length of the inputted text
	len = txt.length

	#initialize a counter for when we loop through all of the letters
	counter = 0

	#initialize the output string which we will build within the loop 
	encrypted_txt = ""

	#loop through the following code while 'counter' is less than the length of the text
	while counter < len

		#if the letter is a space, do not do anything


		if txt[counter] == " "

			encrypted_txt += " "

		else

			encrypted_txt += txt[counter].next

		end

		#increment the counter
		counter+=1
	end

	#gives the encrypted_txt back to the calling method
	return encrypted_txt

end


def decrypt(txt)

	#get the length of the inputted text, to use as a counter
	len = txt.length

	#intialize a counter
	counter = 0


	#initialize the output string which we will build within the loop 
	decrypted_txt = ""

	#initialize the alphabet
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	#loop through the following code while 'counter' is less than the length of the text
	while counter < len

		#if the letter at index 'counter' is not a space, shift the letter backwards by one
		if txt[counter] == " "
			#if it is a space however, add the space to the output string
			decrypted_txt += " "
		else

			#get the index where txt[counter] occurs in the alphabet
			idx = alphabet.index(txt[counter])

			
			decrypted_txt += alphabet[idx - 1]

		end

		#increment the counter
		counter+=1
	end

	return decrypted_txt

end


def main


	#ask secret agent if they want to encrypt or decrypt
	puts "Would you like to encrypt or decrypt (e/d)"
	choice = gets.chomp

	puts "Enter a password to encrypt"
	user_input = gets.chomp 

	if choice == 'e'
		txt = encrypt(user_input)
	elsif choice == 'd'
		txt = decrypt(user_input)
	else
		txt "Invalid response"
	end

	puts txt


#all the old stuff for testing the methods
def old_stuff
	user_input = "abcdefgh"

	puts user_input
	cypher = encrypt(user_input)

	puts cypher

	plaintext = decrypt(cypher)

	puts plaintext


	# Since the method is nested, it will do the encryption first,
	# take that output and put it into the decryption, and then 
	# print the results

	puts decrypt(encrypt("swordfish"))

end   

main