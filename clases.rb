class Dog
	attr_accessor :name, :breed # permite leer y cambiar es como hacer un attr_writer y un attr_reader
	attr_writer :sound # permite cambiar
	attr_reader :people_smelled
	def initialize (name, breed, sound) #name="Toby" #sound="Woof!"
		@name = name
		@breed = breed
		@sound = sound
		@@number_of_dogs ||= 0
		@@number_of_dogs += 1
	end
	def bark
		puts @sound 
	end
	def track
		puts "Sniff!"
	end
	def berserk
		puts @sound + @sound + @sound + @sound
	end
	def smell(person)
		file = File.open(@name+".txt", "a")
		file.puts person
		file.close
	end
	def people_smelled
		file = File.open(@name+".txt", "r")
		people = file.readlines
		file.close
		people
	end
	def self.number_of_dogs
		puts @@number_of_dogs
	end
end

#p1 = Dog.new ("Bingo", "Labrador") # tendrá sound = Woof! por defecto
#p2 = Dog.new ("Oscar", "Teckel", "Jip, jip")
#p3 = Dog.new ("Boxer") no funciona con name="Toby" , le fatan los otros dos y lo detecta por orden (hacerlo con el último)

#p1.bark
#p2.berserk

class Hound < Dog
	attr_accessor :animal
	def initialize (name, breed, sound, animal) # le añadimos animal
		super(name, breed, sound) #esto nos permite no tener que copiar todo @name = name, etc..
		@animal = animal
	end
	def roll
		puts "Roll...Roll...Roll.."
	end
	def track
		puts "Sniff Sniff Sniff..."
	end
end
p1 = Dog.new("Toby", "hotdog", "jip")
h1 = Hound.new("Scooby", "Great", "Bark!","dog")

p1.bark
p1.track
#p1.roll
h1.roll
h1.track

class PetDog < Dog
	attr_accessor :owner
	def initialize (name, breed, sound, owner)
		super(name, breed, sound)
		@owner = owner
	end
	def fetch (toy)
		puts "*drops #{toy}* ... #{bark} #{bark} #{bark}"
		# o llamo 3 veces bark aquí abajo
	end
end

pet = PetDog.new("Ringo", "Beagle", "Guau Guau Guau", "John")
pet.berserk
pet.fetch("ball")
pet.fetch("stick")
puts pet.owner
pet.owner = "new owner"
puts pet.owner

p1.smell("Joe")
p1.smell("Mary")
p1.smell("Anna")
puts p1.people_smelled