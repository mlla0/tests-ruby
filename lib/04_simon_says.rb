def echo(word)
	return "#{word}"
end

def shout(word)
	return "#{word.upcase}"
end

def repeat(word, i = 2)
	return [word] * i * " "
end

def start_of_word(word, a)
	return word[0..a-1]
end

def first_word(word)
	word.split.first
end

def titleize(string)
	special_words = ["the", "and"]
	words = []
	string.split.each_with_index do |w, i|
	i > 0 && special_words.include?(w) ? words << w : words << w.capitalize
	end
	words.join(" ")
end