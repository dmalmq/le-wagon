# Homework challenge #1 - Capitalize string method

# puts "Enter your first name: "
# name = gets.chomp

#  First version
#  first_character = name.chr.upcase
# rest_of_name = name[1..-1]
# puts "Your name capatalized is #{first_character + rest_of_name}."

# Improved version
# puts "Your name is: #{name.chr.upcase + name[1..-1]}"

# Homework challenge #2 - Calculator

# Psuedo code
# 0 Ask for first integer ok
# 1 Store integer ok
# 2 Ask for operator
# 3 Store operator
# 4 Ask for second integer
# 5 Store integer
# 6 Calculate operation
# 7 Display answer

puts "Enter first number: "
first_number = gets.chomp.to_f
puts "Enter operator: "
calc_operator = gets.chomp
puts "Enter second number: "
second_number = gets.chomp.to_f

p first_number.send(calc_operator, second_number)

