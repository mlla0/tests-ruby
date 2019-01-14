def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	arr.sum
end

def multiply(a, b)
	a * b
end

def power(a, b)
	a ** b
end

def factorial(a)
	a != 0 ? (1..a).inject(:*) : 0
end