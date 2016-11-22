ages = {Sergi: 31, Carlos: 35, Dani: 39, Filipa: 18}
res = ages.select { |k,v| v < 35}

City_names = ["barcelona", "madrid", "nueva york"]
City_names_capitalized = City_names.map { |city| city.capitalize }
#puts City_names_capitalized

cities = ["barcelona", "madrid", "nueva york"]
long_city = cities.reduce("") do |longest, city|
	if city.length > longest.length
		city
	else
		longest
	end
end
#puts long_city