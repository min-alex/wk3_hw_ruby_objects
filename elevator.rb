class Elevator
	attr_accessor :floor

	def initialize
		@floor = 1
	end

	def moveToLevel(level)
		if (@floor > level)
			print "Going down to floor ", level, "\n"
			@floor = level
		elsif (@floor < level)
			print "Going up to floor ", level, "\n"
			@floor = level
		elsif (@floor == level)
			print "Staying at floor ", level, "\n"
			@floor = level
		end
	end

	def greet
		print "Hello, you are currently at floor ", @floor, "!\n"
	end 
end

elev = Elevator.new
elev.greet
elev.moveToLevel(9)
elev.greet
print elev.floor, "\n"

elev.floor = 20
elev.greet