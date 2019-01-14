def translate(string)
	case 

	when string.start_with?(/[aeiou]/) && string[1] =~ /[^aeiou]/
		and_ay(string)

	when string[0..1] =~ /qu/
		string = string[2...string.length] + string[0..1]
		and_ay(string)

	when string[0] =~ /[^aeiou]/ && string =~ /qu/
		string = string[3...string.length] + string[0..2]
		and_ay(string)

	when string[0] =~ /[^aeiou]/ && string[1] =~ /[aeiou]/
		string = string.reverse
		and_ay(string)

	when string[0..1] =~ /[^aeiou]/ && string[2] =~ /[aeiou]/
		string = string[2...string.length] + string[0..1]
		and_ay(string)

	when string.split.count == 2
		string = string.split
		string = string[0] + " " + string[1].slice(1,2) + string[1].slice(0)
		and_ay(string)

	when string[0..2] =~ /[^aeiou]/ 
		string = string[3...string.length] + string[0..2]
		and_ay(string)

	when string =~ /sch/ 
		string = string[3...string.length] + string[0..2]
		and_ay(string)

	when string.split.count > 2
		string = string.split
		string.each do |w|
			w = w.slice(2,6) + w.slice(0,1)
		end
		string = string.join(" ")
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