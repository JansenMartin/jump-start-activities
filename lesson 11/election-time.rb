candidates = {}
list = []
total_votes = []
winners = []

def ask (question, kind = "string")
  print question + " "
  answer = gets.chomp
  return answer
end

def linebreak
puts "--------------------------------"
end

puts "Welcome to my election voting program!"

number_of_candidates = ask("\nHow many candidates? >")

number_of_candidates.to_i.times do |i|
candidate_name = ask("\nName of candidate #{i + 1}: ")
list << candidate_name
candidates["#{candidate_name.upcase}"] = Array.new
end

puts linebreak

number_of_voters = ask("How many voters? >")

print linebreak

number_of_voters.to_i.times do |i|
vote = ask("Vote # #{i + 1}: ")
  if list.include? vote
  (candidates["#{vote.upcase}"] ||= []) << 1.to_i
  else 
  list << vote
  candidates["#{vote.upcase}"] = Array.new
  (candidates["#{vote.upcase}"] ||= []) << 1.to_i
  end
end

print linebreak

puts "\nELECTION RESULTS..."

puts "\nVote Summary:"
puts " "

list.each do |name|
total_votes << candidates[name.upcase].sum
tally = "#{name} - #{candidates[name.upcase].sum} vote"
  if candidates[name.upcase].sum > 1
  tally << "s"
  end
puts tally
end

i = 0
total_votes.each do |total|
  if total == total_votes.max
  winners << list[i]
  end
i += 1
end

win_header = "\nWINNER"
if winners.count > 1
win_header << "S:"
else
win_header << ":"
end

puts win_header

winners.each do |item|
puts "#{item}"
end

puts linebreak