# frozen_string_literal: true

# ask the user for two numbers
# ask the user for an operation to preform
# preform the operation on the two numbers
# output the result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Welcome to calculator! Enter your name:')

name = ''
loop do
  name = gets.chomp

  break unless name.empty?

  prompt('Make sure to use a valid name.')
end

prompt("Hi #{name}!")

loop do
  num1 = ''

  loop do
    prompt("What's the first number?")
    num1 = gets.chomp
    break if valid_number?(num1)

    prompt('Hmm.. that doesnt look like a valid number..')
  end

  num2 = ''
  loop do
    prompt("What's your second number?")
    num2 = gets.chomp

    break if valid_number?(num2)

    prompt('Hmm.. that doesnt look like a valid number')
  end
  operator_prompt = <<-MSG
    What operation would you like to preform?
    1) Add
    2) Subtract
    3) Multiply
    4)Divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    break if %w[1 2 3 4].include?(operator)

    prompt('must choose one of the four options')
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2
           end

  prompt("The result is #{result}!")

  prompt('do you want to preform another calculation?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for calculating')
