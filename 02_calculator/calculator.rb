def add num1, num2
	num1 + num2
end


def subtract num1, num2
	num1 - num2
end


def sum numArray
	result = 0
	if numArray.length == 0
		return 0
	elsif numArray.length == 1
		return numArray[0]
	else
		for num in numArray
			result += num

		end
	end
	result
end


def multiply(num1, num2, *rest)
	result = num1 * num2
	if rest.length == 0
		return result
	else
		for num in rest
			result *= num
		end
	end
	result	
end


def power num, power
	result = 1.0
	if power == 0
		return result
	elsif power < 0
		power = power * -1
		for i in (1..power)
			result *= num
		end
		return 1/result
	else
		for i in (1..power)
			result *= num
		end
	end
	result
end

def factorial num
	result = 1
	if num > 0
		for i in (1..num)
			result *= i
		end
		return result
	else
		return 0
	end
end
