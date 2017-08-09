def echo string
	string.to_s
end

def shout string
	string.upcase.to_s
end

def repeat string, numberOfRepeat=2
	numberOfRepeat -=1
	((string.to_s + " ").to_s * numberOfRepeat) + string.to_s
end

def start_of_word string, amount=0
	amount -= 1
	string[0..amount]
end

def first_word string
	string = string.split(" ")
	string[0]
end

def titleize string
	result = first_word(string).capitalize + " "
	string = string.split(" ")
	string.delete_at(0)
	for word in string
		if isLittle(word)
			result = result + word + " "
		else
			result = result + word.capitalize + " "
		end
	end
	result.chomp(" ")
end

def isLittle string
	littleWords = ["the", "of", "and", "or", "a", "if", "is", "are"]
	for little in littleWords
		if little == string.downcase
			return true
		end
	end
	false
end
