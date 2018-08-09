# Sets prices for goods
twix = 0.65
chips = 0.50
nutter_butter = 0.75
peanut_butter_cup = 0.65
gum = 0.55
allowance = 0 
change = 0

# Calculates change based on user's item selection and current dollar amount
def change(allowance, item)
  change = allowance - item
  puts "\nHere you go!  Your change is $#{'%.2f' % change}."
end

# Prints message if user doesn't have enough money to purchase selected item
def broke(allowance)
  print "\nYou're broke!  Take your $#{'%.2f' % allowance} and go somewhere else!"
end

# Prints message to the user
puts "Welcome to my virtual vending machine!"

# Collects user's starting dollar amount
loop do
  print "\nHow much money ya got? "
  allowance = gets.chomp.to_f

# Prints message based on user's input
  if allowance == 0
    puts "\nInvalid entry.  Please try again: "
    next
  else
    puts "\nJust $#{'%.2f' % allowance}, huh?  Okay, then..."
    break
  end

end

# Prints pre-determined vending machine items and prices
puts "\nHere's a list of our tasty treats!"
puts "\nA. $#{twix} Twix
B. $#{'%.2f' % chips} Chips
C. $#{nutter_butter} Nutter Butters
D. $#{peanut_butter_cup} Peanut Butter Cup
E. $#{gum} Juicy Fruit Gum"

# Prints message to user and collects their item section
loop do
  print "\nSo, what'll it be? > "
  letter = gets.chomp.downcase

  # Prints message based on user selection and starting dollar amount
  # Calculates change for user if allowance is greater than or equal to item's price
  if letter == "a"

    if allowance >= twix
      change(allowance, twix)
    else
      broke(allowance)
    end

  elsif letter == "b"

    if allowance >= chips
      change(allowance, chips)
    else
      broke(allowance) 
    end

  elsif letter == "c"

    if allowance >= nutter_butter
      change(allowance, nutter_butter)   
    else
      broke(allowance)
    end

  elsif letter == "d"

    if allowance >= peanut_butter_cup
      change(allowance, peanut_butter_cup)
    else
      broke(allowance)
    end
    
  elsif letter == "e"

    if allowance >= gum
      change(allowance, gum)
    else
      broke(allowance)
    end
    
  else
    puts "\nInvalid selection!"
    next
  end

  break
end