require 'date'
require_relative './user'

today = Date.today
tests = [
  Date.new(1990, 1, 1), Date.new(1990, 1, 30),
  Date.new(1990, today.month, 1), Date.new(1990, today.month, today.day), Date.new(1990, today.month, -1), 
  Date.new(1990, 12, 1), Date.new(1990, 12, 30),
]

puts "User#birthday?"
tests.each do |date|
  puts "#{date} -> #{User.new("Test", date).birthday?}"
end
puts

puts "User#age"
tests.each do |date|
  puts "#{date} -> #{User.new("Test", date).age}"
end
puts

puts "User#next_birthday"
tests.each do |date|
  puts "#{date} -> #{User.new("Test", date).next_birthday}"
end
