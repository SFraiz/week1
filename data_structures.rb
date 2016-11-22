hash = {
	wat: [{}, {}, {
		wut: [[],[
			[0,1,2,3,4,5,6,7,8,{
				bbq: "Barbacoa"
			}]
		]]
	}] 
}

arr = [
	[0,1,2,3,4,{
		secret: {
			unlock: [0, "Eureka"]
		}
	}]
]

puts hash[:wat][2][:wut][1][0][9][:bbq]
puts arr[0][5][:secret][:unlock][1]

class CarDealer
	def initialize (inventory = {})
		@inventory = inventory
	end
	def add_inventory
		@inventory.push
	end
	def cars(brand)
		@inventory[brand.capitalize.to_sym]
	end
	def add_car(brand, model)
		@inventory[brand.capitalize.to_sym] ||= [] #si no existe la marca, crea un array de la marca
		@inventory[brand.capitalize.to_sym].push(model)
	end
	def print_inventory
		@inventory.each do |k,v|
			print k.to_s + ": " #print para que salga todo en la misma linea
			puts v.join(", ") #puts para que al terminar los modelos salte de linea para la marca nueva
		end
	end
end

concesionario = CarDealer.new({
	Ford: ["Fiesta", "Mustang"],
	Honda: ["Civic", "CR-V"]
	})
puts "Introduce una marca"
brand = gets.chomp
puts concesionario.cars(brand)
concesionario.add_car("ford", "focus")
concesionario.add_car("PEUGEOT", "206")
concesionario.print_inventory