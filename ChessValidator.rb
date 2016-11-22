class ChessBoard
	def initialize(x, y)
		@x = x
		@y = y
   	end
   	def board_positions
  		chessboard = [
  			["a8", "b8", "c8", "d8", "e8", "f8", "g8", "h8"],  #8
  			["a7", "b7", "c7", "d7", "e7", "f7", "g7", "h7"],  #7
  			["a6", "b6", "c6", "d6", "e6", "f6", "g6", "h6"],  #6
  			["a5", "b5", "c5", "d5", "e5", "f5", "g5", "h5"],  #5
  			["a4", "b4", "c4", "d4", "e4", "f4", "g4", "h4"],  #4
  			["a3", "b3", "c3", "d3", "e3", "f3", "g3", "h3"],  #3
  			["a2", "b2", "c2", "d2", "e2", "f2", "g2", "h2"],  #2
  			["a1", "b1", "c1", "d1", "e1", "f1", "g1", "h1"]   #1
  		]
  	end
   	def x_positions
   		if x == "a"
   			x = 0
   		elsif x == "b"
   			x = 1
   		elsif x == "c"
   			x = 2
   		elsif x == "d"
   			x = 3
   		elsif x == "e"
   			x = 4
   		elsif x == "f"
   			x = 5
   		elsif x == "g"
   			x = 6
   		elsif x == "h"
   			x = 7
   		else
   			x = nil
   		end
   	end
   	def y_positions
   			if y == "8"
   			y = 0
   		elsif y == "7"
   			y = 1
   		elsif y == "6"
   			y = 2
   		elsif y == "5"
   			y = 3
   		elsif y == "4"
   			y = 4
   		elsif y == "3"
   			y = 5
   		elsif y == "2"
   			y = 6
   		elsif y == "1"
   			y = 7
   		else
   			y = nil
   		end
   	end
end
class Piece

end
class Validation
	def initialize
		@initial_position = initial_position
		@final_position = final_position
	end
end


file = File.open("simple_moves.txt", "r")
moves = file.read
file.close
#puts moves

file = File.open("simple_results.txt", "r")
results = file.read
file.close
#puts results

x = "a" 
y = "2"
#p c = x+y

my_array = [1,2,3,4,5]
sum = 0
my_array.each do |item|
	sum += item
end
p sum

chess = [
  			["a8", "b8", "c8", "d8", "e8", "f8", "g8", "h8"],  #8
  			["a7", "b7", "c7", "d7", "e7", "f7", "g7", "h7"],  #7
  			["a6", "b6", "c6", "d6", "e6", "f6", "g6", "h6"],  #6
  			["a5", "b5", "c5", "d5", "e5", "f5", "g5", "h5"],  #5
  			["a4", "b4", "c4", "d4", "e4", "f4", "g4", "h4"],  #4
  			["a3", "b3", "c3", "d3", "e3", "f3", "g3", "h3"],  #3
  			["a2", "b2", "c2", "d2", "e2", "f2", "g2", "h2"],  #2
  			["a1", "b1", "c1", "d1", "e1", "f1", "g1", "h1"]   #1
  		]
p chess[0][0]
