# build a mortgage calculator
# (or car payment calculator -- it's the same thing) that determines the monthly
# payment assuming that interest is compounded monthly.

def message(words)
  puts "=> #{words}"
end

message('Welcome to your loan calculator')

message('First, what is your total loan amount?')
loan_amount = gets.chomp.to_i

message('Great! What is your APR (Annual Percentage Rate)?')
apr = gets.chomp.to_f
apr /= 100
monthly_interest = apr / 12

message('Wonderful, last thing I promise, What is your loan duration (in years)')
loan_duration = gets.chomp.to_i
month_duration = loan_duration * 12

message("Your loan amount is: #{loan_amount}, your APR is #{apr * 100}% and your laon duration is #{loan_duration} years")

monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**-month_duration))

message("This means that your monthly payment amount is $#{monthly_payment}! Good luck paying that!")
