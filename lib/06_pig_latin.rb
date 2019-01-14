def translate(string)
	case 

	when string.start_with?(/[aeiou]/) 
		and_ay(string)

	when string[0] =~ /[^aeiou]/ && string[1] =~ /[aeiou]/
		string = string.reverse
		and_ay(string)

	when string[0] =~ /[^aeiou]/ && string[1] =~ /[^aeiou]/
		string = string[2...string.length] + string[0..1]
		and_ay(string)

	end
end



def and_ay(string)
	words = []
	string.split.each do |w|
		w << "ay"
		words << w
	end
	words.join(" ")
end