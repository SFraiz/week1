class ShoppingCart
	def initialize
		@items = []
	end
	def add_item_to_cart(item)
		@items.push(item)
	end
	def cost
    	total_price = 0
    	@items.each do |item|
      	total_price += item.price
      	end
      	puts "Total = #{total_price}"
    end
    def show
    	puts "Your Shopping Cart: "
    	i = Hash.new(0)
    	@items.each do |v|
    		i[v] += 1
    	end
    	i.each do |k,v|
    	puts "#{v} #{k.name} #{k.price*v}"
    	end
puts "______________________"
    end
end
class Item
	attr_reader :name, :price
	def initialize(name,price)
		@name = name
		@price = price
	end
	def price
		@price
	end
end
class Apples < Item
	def price
		if v >= 2
		@price
		end
	end
end
class Oranges < Item
	def price
		if v >= 3
		@price*2
		end
	end
end
class Grapes < Item
	def price
	if v >= 4
		@price
		banana = Banana.new("Banana",0)
		cart.add_item_to_cart(banana)
	else
	@price
	end
end
class Banana < Item
	def price
		@price
	end
end

cart = ShoppingCart.new

apple = Apples.new("Apples", 10)
banana = Banana.new("Banana", 5)
banana = Banana.new("Banana", 5)
grape = Grapes.new("Grape", 15)
grape = Grapes.new("Grape", 15)
grape = Grapes.new("Grape", 15)
grape = Grapes.new("Grape", 15)
grape = Grapes.new("Grape", 15)

cart.add_item_to_cart(apple)
cart.add_item_to_cart(banana)
cart.add_item_to_cart(banana)

cart.show
cart.cost

	