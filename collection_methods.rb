class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end
homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]
for i in 0..4
	#puts  homes [i].name # o .city .capacity .price
end

homes.each do |hm|
	#puts hm.name # o .city .capacity .price
end

homes.each { |hm|
	#puts hm.name
}
homes.each do |hm|
	#puts "#{hm.name} in #{hm.city} #{hm.capacity} \nPrice: $#{hm.price} a night"
end

cities = []
homes.each do |hm|
	cities.push(hm.city)
end
#puts cities

cities = homes.map do |hm|
	hm.city
end
#puts cities
