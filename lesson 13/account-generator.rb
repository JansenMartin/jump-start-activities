student_data = []
lines = File.foreach('names.txt').count

def linebreak
puts "-" * 65
end

i = 0
lines.times do loop

name = File.readlines('names.txt')[i].upcase.split

id = rand(1000000..9999999)

  while student_data.any? {|student| student[:id] == id}
  id = rand(1000000..9999999)
  end

  if name.length == 3
  email = "#{name.first[0]}#{name[1][0]}#{name.last}#{id.to_s.split(//).last(3).join}@adadevelopersacademy.org"
  else
  email = "#{name.first[0]}#{name.last}#{id.to_s.split(//).last(3).join}@adadevelopersacademy.org"
end

student_data[i] = {
  name: "#{name.join(" ")}",
  id: "#{id}",
  email: "#{email}"
}

i += 1
end

puts linebreak

student_data.each do |student|
  printf "%-20s %-2s %-10s\n", student[:name], student[:id], student[:email]
end

puts linebreak


# RESOURCES

# https://stackoverflow.com/questions/7953611/solutions-to-the-annoying-warning-already-initialized-constant-message

# https://stackoverflow.com/questions/12754563/ruby-insert-hash-into-array

# https://stackoverflow.com/questions/23718284/how-do-i-iterate-over-an-array-of-hashes-and-return-the-values-in-a-single-strin

# https://stackoverflow.com/questions/1514883/determine-if-a-value-exists-in-an-array-of-hashes

# https://stackoverflow.com/questions/25168662/how-to-read-lines-from-file-into-array

# https://stackoverflow.com/questions/4190797/how-can-i-remove-the-string-n-from-within-a-ruby-string

# https://www.ruby-forum.com/topic/4417957  -- Number of lines in a text file