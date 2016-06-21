class Calculator
	attr_accessor :val1
	attr_accessor :val2

	def initialize(value1, value2)
		@val1 = value1
		@val2 = value2
	end

	def checkVals
		print "value1 is: ", @val1, "\n"
		print "value2 is: ", @val2, "\n\n"
	end

	def add
		sumOf = @val1 + @val2
		return sumOf
	end
	def subtract
		diff = @val1 - @val2
		return diff
	end
	def multiply
		product = @val1 * @val2
		return product
	end
	def divide
		quotient = @val1 / @val2
		remainder = @val1 % @val2
		return quotient, remainder
	end

end	

calc = Calculator.new(25, 5)

calc.checkVals

calc.val1 = 20
calc.val2 = 2

calc.checkVals

print "calc.add returns: ", calc.add, "\n"
print "calc.subtract returns: ", calc.subtract, "\n"
print "calc.multiply returns: ", calc.multiply, "\n"
print "calc.divide returns: ", calc.divide, " ([quotient, remainder])", "\n"
