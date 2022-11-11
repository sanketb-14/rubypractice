day = print "enter the no :"
day = gets.chomp.to_i
case day
  when 1
  puts "today is monday"
  when 2
  puts "today is tuesday"
  when 3 
  puts "today is wednesday"
else
  puts "enter a valid date"
end
