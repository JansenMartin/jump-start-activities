# -- METHOD FOR GETING USER INPUT --
# Accepts argument "question", prints argument and empty space
# answer equals input from the USER
# returns answer for use outside of the method
def ask (question, kind = "string")
  print question + " "
  answer = gets.chomp
  return answer
end

puts "Welcome to some mad, mad madlibs.  Enter some words below:"

puts

name = ask("Name:")
animal = ask("Animal (singular):")
adjective = ask("Adjective:")
color = ask("Color:")
plural_noun = ask("Plural noun:")
plant = ask("Plant (singular):")
time_of_day = ask("Time of day:")
verb_ing = ask("Verb ending with -ing:")
verb_present = ask("Present-tense verb:")
verb_past = ask("Past-tense verb:")
food_plural = ask("Food (plural):")

number = ask("Number:")

# As long as the input assigned to "number"
# DOESN'T equal an integer converted to a string
# then prompt user to input a numerical value
while
  number != number.to_i.to_s
  number = ask("A numerical value this time, please:")
end

puts "\nI just heard the CRAZIEST rumor about #{name}."
puts "They can grow #{food_plural} from a magical #{plant}!"
puts "Just this #{time_of_day}, #{name} harvested #{number} #{food_plural} -- #{adjective}, #{color} ones!"
puts "Taking a single bite will send you #{verb_ing} to the moon and back." 
puts "Well, okay, maybe not...When I ate one,"
puts "I just #{verb_past}, and then fed the #{food_plural} to my #{animal}."

puts "The magic #{plant} might not break the economy...unless"
puts "#{name} can figure out a way to make it grow #{plural_noun.upcase}!"
puts "I would definitely #{verb_present} to the moon and back if their #{plant} could do THAT."


=begin
# Stores a list of foods to print later
foods = ["shrimp", "cauliflower", "salmon", "garlic", "oysters",
"salami", "tomatoes", "okra", "zucchini", "avocado"]

# Prompts user to enter a number
print "\nHow many foods would you like to see? I suggest 10, but it's up to you. "
number_of_foods = gets.chomp.to_i

# Prints message to user
# and sets number_of_foods
# based on the number they entered
if 
  number_of_foods > 10
  puts "Best I can do is 10. Let's do 10."
  number_of_foods = 10
elsif 
  number_of_foods >= 1 && number_of_foods <= 10
  puts "Ok! Let's do #{number_of_foods}."
else
  puts "We'll just pretend you said 10."
  number_of_foods = 10
end

# Prints message to user
puts "...Your Fancy Random Menu..."

# Prints an ordered list with a number of foods
# equal to number_of_foods
number_of_foods.times do |i|
list_item = foods[rand(0...(foods.length))]
puts "#{i + 1}: #{list_item}"
end
=end