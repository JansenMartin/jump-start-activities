# Prints prompts and collects input
def ask (prompt)
  print prompt
  answer = gets.chomp
end

# Prints prompts for the user and
# collects user input for the Madlib
puts "Welcome to my mad, mad madlibs.  Enter some words below:"
name = ask("\nName: ")
animal = ask("Animal (singular): ")
adjective = ask("Adjective: ")
color = ask("Color: ")
noun_plural = ask("Plural noun: ")
plant = ask("Plant (singular): ")
time_of_day = ask("Time of day: ")
verb_ing = ask("Verb ending with -ing: ")
verb_present = ask("Present-tense verb: ")
verb_past = ask("Past-tense verb: ")
food_plural = ask("Food (plural): ")
number = ask("Number: ").to_i

# Continuously prompts user for integer if the user
# entered words (or 0) instead of a numerical value greater than 0
while
  number == 0
  number = ask("An actual number, please: ").to_i
end

# Prints Madlib based on the user's input
puts "\nI just heard the CRAZIEST rumor about #{name}."
puts "They can grow #{food_plural} from a magical #{plant}!"
puts "Just this #{time_of_day}, #{name} harvested #{number} #{food_plural} -- #{adjective}, #{color} ones!"
puts "Taking a single bite will send you #{verb_ing} to the moon and back." 
puts "Well, okay, maybe not...When I ate one,"
puts "I just #{verb_past}, and then fed the #{food_plural} to my #{animal}."
puts "The magic #{plant} might not break the economy...unless"
puts "#{name} can figure out a way to make it grow #{noun_plural.upcase}!"
puts "I would definitely #{verb_present} to the moon and back if their #{plant} could do THAT."


