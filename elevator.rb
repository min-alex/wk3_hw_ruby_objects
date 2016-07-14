class Elevator
	attr_accessor :floor

	def initialize
		@floor = 1
	end

	def moveToLevel(level)
		if (@floor > level and @floor < 20)
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

	def up
		if @floor == 20
			print "Already at top floor!\n"
		else
			@floor += 1
		end
	end

	def down
		if @floor == 0
			print "Already at bottom-most floor.\n"
		else
			@floor -= 1
		end
	end

	def greet
		print "Hello, you are currently at floor ", @floor, "!\n"
	end 
end

print "----------------------\n"
elev = Elevator.new
elev.greet
elev.moveToLevel(9)
elev.greet
print elev.floor, "\n"
print "----------------------\n"
elev.floor = 20
elev.greet
print "----------------------\n"
elev.up
elev.greet
print "----------------------\n"
elev.floor = 0
elev.down
elev.greet