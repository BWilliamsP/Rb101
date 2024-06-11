# frozen_string_literal: true

# ask the user for two numbers
# ask the user for an operation to preform
# preform the operation on the two numbers
# output the result

puts "What's the first number?"
num1 = gets.chomp

puts "#{num1} is a great number!"

puts "What's your second number?"
num2 = gets.chomp

puts 'What operation would you like to preform? 1) Add 2) subtract 3) multiply 4) divide'
operator = gets.chomp

case operator
when '1'
  result = num1.to_i + num2.to_i
when '2'
  result = num1.to_i - num2.to_i
when '3'
  result = num1.to_i * num2.to_i
when '4'
  result = num1.to_f / num2
end

puts "The result is #{result}!"
