require "imdb"
require 'pry'

class Movie
	attr_accessor :name, :rating
	def initialize(name, rating)
		@name = name
		@rating = rating
	end
end

class MovieContainer
	def initialize
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end

	def read_file
		movies_file = IO.read("./movies.txt")
		@array_of_movies = movies_file.split("\n")
	end

	def print_movies
		@movies.each_with_index do |movie, index|
			puts "#{index + 1}.  #{movie.name}"
		end
	end

	def print_index
		@movies.each_with_index do |movie, index|
			print "|#{index + 1}"
		end
	end

	def print_rating
		10.downto(1) do |num|
			@movies.each do |movie|
				print "|"
				if num <= movie.rating.to_i
					print "#"
				else
					print " "
				end
			end
			puts "|"
		end
	end

	def print_output
		puts "==============MOVIE RATING============"
		puts ""
		print_rating
		puts "\n====================================\n"
		print_index
		puts "\n====================================\n"
		print_movies
	end
	# def set_outpout
	# 	print_rating
	# 	puts "============="
	# 	print_movies
	# end
end



moviecontainer = MovieContainer.new
movies_file = IO.read("movies.txt")
array_movies = movies_file.split("\n")
array_movies.each do |movie|
	search = Imdb::Search.new(movie)
	i = 0
	rating = nil
	while rating == nil
		rating = search.movies[i].rating.round
		# binding.pry
		# binding.pry
		i += 1
	end
	moviecontainer.add_movie(Movie.new(movie, rating))
end

# moviecontainer.print_rating
# puts "===================================="
moviecontainer.print_output