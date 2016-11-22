class Car
	def initialize (engine, noise = "ññññññ")
		@engine = engine
		@noise = noise
	end
	def make_noise
		@noise + @engine.noise
	end
end
class Engine
	attr_reader :noise
	def initialize (type)
		@type = type
		if type == "diesel"
			@noise = "brrrrr"
		elsif type == "electric"
			@noise = "zzzmmmmm"
		else
			@noise = "bruuuumm"
		end
	end
end

motor = Engine.new("electric")
coche = Car.new(motor)
puts motor.noise
puts coche.make_noise

#NEW EXERCISE (no usar herencia)
class Truck
	attr_reader :noise, :wheels
	def initialize
		@wheels = 16
		@noise = "BRROOOMM"
	end
end
class Bike
	attr_reader :noise, :wheels
	def initialize
		@wheels = 2
		@noise = "ñecñec"
	end
end
class MotorBike
	attr_reader :noise, :wheels
	def initialize
		@wheels = 2
		@noise = "brrrmmm"
	end
end
class WheelCounter
	def self.count_wheels(vehicles)
		vehicles.reduce(0) do |sum, item| #forzamos para que sea 0
			sum + item.wheels
		end
	end
end
class NoisePrinter
	def self.print_noises(vehicles)
		vehicles.reduce("") do |sum, item|
			sum + item.noise + " "
		end
	end
end

vehicles = [Truck.new, Bike.new, MotorBike.new]
puts WheelCounter.count_wheels(vehicles)
puts NoisePrinter.print_noises(vehicles)