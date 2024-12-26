
#We can use the foreach loop in the file handling 
# File.foreach('First.txt') do |line|
#   puts line
# end

#We can write the array to a file but first we have to convert it to the string
# File.write("First.txt",[1,2,3,4,5].join("\n"),mode:"a")
# File.foreach("First.txt","r") {|line| puts line}


#Write the program to take the input from the user and then sum the number
# file=File.open("First.txt")
sum=0
file=File.open("First.txt","a")
loop do
  print "Enter the number or y to stop : "
  input = gets.chomp  
  break if input.downcase == 'y'
  file.puts(input)

end 
file.close
File.foreach("First.txt") do |line|
  sum = sum + line.to_i # sum += line
end
puts "The sum of numbers : #{sum}"