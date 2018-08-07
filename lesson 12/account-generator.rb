student_names = []
File.readlines('names.txt').each {|name| student_names << name.strip}

ID_numbers = []
email_addresses = []

def linebreak
puts "------------------------------------------------------------------"
end

## this .times loop was replaced by an optional enhancement
=begin
5.times do loop
print "Enter student name (first and last): >"
answer = gets.chomp.upcase
student_names << answer
end
=end

student_names.length.times do loop
new_number = rand(111111..999999)

  while ID_numbers.include?(new_number)
  new_number = rand(111111..999999)
  end
  
ID_numbers << new_number.to_s
end

i = 0
student_names.length.times do loop
name = student_names[i].split

  if name.length == 3
  email_addresses << "#{name.first[0]}#{name[1][0]}#{name.last}#{ID_numbers[i].split(//).last(3).join}@adadevelopersacademy.org"
  else
email_addresses << "#{name.first[0]}#{name.last}#{ID_numbers[i].split(//).last(3).join}@adadevelopersacademy.org" 
  end

i += 1
end

puts linebreak

student_names.count.times do |index|
  printf "%-20s %-2s %-10s\n", student_names[index],ID_numbers[index], email_addresses[index]
end

puts linebreak


# RESOURCES

# https://www.thoughtco.com/splitting-strings-2908301

# https://stackoverflow.com/questions/4395095/how-to-generate-a-random-number-between-a-and-b-in-ruby

# https://stackoverflow.com/questions/2730854/ruby-how-to-get-the-first-character-of-a-string

# https://stackoverflow.com/questions/27141788/how-to-get-the-rightmost-digit-from-an-integer-ruby

# https://stackoverflow.com/questions/2174767/extracting-the-last-n-characters-from-a-ruby-string

# https://stackoverflow.com/questions/38688382/ruby-how-to-print-strings-from-arrays-in-parallel

# https://stackoverflow.com/questions/26415380/replace-a-single-element-in-an-array

# https://stackoverflow.com/questions/25168662/how-to-read-lines-from-file-into-array

# https://stackoverflow.com/questions/4190797/how-can-i-remove-the-string-n-from-within-a-ruby-string