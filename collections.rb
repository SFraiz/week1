class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

  def array_printer(array)
  array.each do |language|
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_printer(array_of_languages)
puts "_____________________________________________________________________"
aged_languages = array_of_languages.map do |language|
	language.age = language.age+1
	language
end
puts "The programming languages aged one year are: "
array_printer(aged_languages)
puts "_____________________________________________________________________"
sorted_languages = array_of_languages.sort { |a, b| b.age <=> a.age} 

"The programming languages sorted by age are: "
array_printer(sorted_languages)
puts "_____________________________________________________________________"
delated_languages = array_of_languages.delete_if {|language| language.name == "Java"}
array_printer(delated_languages)
puts "_____________________________________________________________________"
shuffled_languages = array_of_languages.shuffle 
array_printer(shuffled_languages)
puts "_____________________________________________________________________"
array_of_languages.map! {|language| language.name += "!!!"}
