walkers_data = Array.new

def ask (question, kind = "string")
  print question + " "
  answer = gets.chomp
  return answer
end

def linebreak
puts "-" * 65
end

number_of_walkers = ask("Enter number of participants: ").to_i
goal = ask("Enter earning goal for this walk-a-thon:").to_f
puts linebreak

i = 0
number_of_walkers.times do loop
name = ask("Enter name:")
laps = ask("How many laps did you complete?").to_i
earned_per_lap = ask("Enter amount earned per completed lap:").to_f

earned = laps * earned_per_lap
puts "\t\t ---> Earned $#{'%.2f' % earned}"

walkers_data[i] = {
    name: name,
    laps: laps,
    earned: earned.to_f
  }

i += 1
end

linebreak

puts "Highest earning walkers:"
i = 1
walkers_data.each do |walker|
  if walker[:earned] == walkers_data.max_by{|k| k[:earned] }[:earned]
  puts "#{i}. #{walker[:name]}"
  i += 1
  end

end

total_earned = walkers_data.sum {|h| h[:earned] }

puts "\nTOTAL EARNED: $#{'%.2f' % total_earned}"

print "GOAL MET? "
if total_earned >= goal
puts "Heck yes!"
difference = total_earned - goal
  if total_earned == goal
    puts "We won by the skin of our teeth, with $#{'%.2f' % difference} to spare."
    else puts "We killed it by $#{'%.2f' % difference}."
  end
else puts "Nah, dog."
difference = goal - total_earned
puts "We missed the mark by $#{'%.2f' % difference}."
end


# RESOURCES

# https://stackoverflow.com/questions/39581381/find-the-highest-value-in-an-array-of-hashes-in-ruby

# https://stackoverflow.com/questions/3728014/sum-the-value-of-array-in-hash

# https://stackoverflow.com/questions/15900537/to-d-to-always-return-2-decimals-places-in-ruby