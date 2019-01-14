def who_is_bigger(a, b, c)
	case 
		when a == nil || b == nil || c == nil
			return "nil detected"
		when a > b && a > c
			return "a is bigger"
		when b > a && b > c
			return "b is bigger"
		when c > a && c > b
			return "c is bigger"
	end
end

def reverse_upcase_noLTA(string)
	string.reverse.upcase.delete("LTA")
end

def array_42(arr)
	arr.count(42) > 0 ? true : false 
end

def magic_array(arr)
	arr.flatten.sort.map{ |n| n*2 }.reject{ |n| n%3==0 }.uniq.sort
end