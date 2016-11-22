puts "enter your username"
username = gets.chomp
puts "enter your pasword"
pasword = gets.chomp
if Authenticator.authenticate(username, pasword)
	puts "Type in some text"
	text = gets.chomp
	puts "your text has #{WordCounter.count(text)} words"
else
	puts "Incorrect username or pasword"
end


class Authenticator
	def self.authenticate(username, pasword)
		if username == "harek" && pasword == "secret"
			true
		else
			false
		end
	end
end
class User
	def login
		puts "enter your username"
		username = gets.chomp
		puts "enter your pasword"
		pasword = gets.chomp
		while !Authenticator.authenticate(username, pasword)
			puts "Incorrect username or pasword"
			puts "enter your username"
			username = gets.chomp
			puts "enter your pasword"
			pasword = gets.chomp
		end
	end
end

class WordCounter
	def self.count(text)
		text.chomp.split(" ").length
	end
end