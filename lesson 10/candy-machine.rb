twix = 0.65
chips = 0.50
nutter_butter = 0.75
peanut_butter_cup = 0.65
gum = 0.55
allowance = 0 
change = 0

puts "Welcome to my virtual vending machine!"

# do loop for collecting user's starting dollar amount
# allowance variable is assigned to user input
# .to_f converts user input to a float.  "abc".to_f returns 0
#  if allowance equals 0, then user is prompted to enter info again

loop do
  print "\nHow much money ya got?"
  allowance = gets.chomp.to_f 
  if allowance == 0
  puts "\nInvalid entry.  Please try again."
  next
  else
    # '%.2f' % allowance displays trailing zeros in value assigned to "allowance"
    puts "Just $#{'%.2f' % allowance}, huh?  Okay, then..."
  break
  end
end

# List of pre-determined vending machine items and prices
puts "\nHere's a list of our wares!"

puts "\nA. $#{twix} Twix
B. $#{'%.2f' % chips} Chips
C. $#{nutter_butter} Nutter Butters
D. $#{peanut_butter_cup} Peanut Butter Cup
E. $#{gum} Juicy Fruit Gum"

# Do loop that collects user's item selection, 
# checks if the user has enough money, and calculates change.
# Loop starts over if user enters invalid selection.
loop do
print "\nSo, what'll it be? > "
# .downcase converts user input into lowercase lettering
letter = gets.chomp.downcase

if letter == "a" || letter == "d"
  if allowance >= twix || allowance >= peanut_butter_cup
  change = allowance - twix
  puts "\nHere you go!  Your change is $#{'%.2f' % change}."
  else
  print "You're broke!  Take your $#{'%.2f' % allowance} and go somewhere else!"
  end
  
elsif letter == "b"
  if allowance >= chips
    change = allowance - chips
    print "\nHere you go!  Your change is $#{'%.2f' % change}."
  else 
    print "You're broke!  Take your $#{'%.2f' % allowance} and go somewhere else!"
  end

elsif letter == "c"
  if allowance >= nutter_butter
    change = allowance - nutter_butter
    puts "\nHere you go!  Your change is $#{'%.2f' % change}."
    
  else
    print "You're broke!  Take your $#{'%.2f' % allowance} and go somewhere else!"
  end
  
elsif letter == "e"
  if allowance >= gum
    change = allowance - gum
    puts "\nHere you go!  Your change is $#{'%.2f' % change}."
    
  else
    print "You're broke!  Take your $#{'%.2f' % allowance} and go somewhere else!"
  end
  
else
puts "\nInvalid selection!"
next
end
break
end