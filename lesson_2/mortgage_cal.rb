# frozen_string_literal: true

# build a mortgage calculator
# (or car payment calculator -- it's the same thing) that determines the monthly
# payment assuming that interest is compounded monthly.

def valid_float(float)
  float >= 0
end

def valid_integar(int)
  int >= 0
end

def message(words)
  puts "=> #{words}"
end

message('Welcome to your loan calculator')

loop do
  loan_amount = ' '
  loop do
    message('First, what is your total loan amount?')
    loan_amount = gets.chomp.to_i
    break if valid_integar(loan_amount)

    message('Can you try again with a valid number please?')
  end

  apr = ''

  loop do
    message('Great! What is your APR (Annual Percentage Rate)?')
    apr = gets.chomp.to_f
    break if valid_float(apr)

    message('Hmm please try taht agian (your APR has to be over 0%)')
  end

  apr /= 100
  monthly_interest = apr / 12

  loan_duration = ''

  loop do
    message('Wonderful, last thing I promise, What is your loan duration (in years)')
    loan_duration = gets.chomp.to_i
    break if valid_integar(loan_duration)

    message('Sorry, please enter a valid number of years your loan is for')
  end

  month_duration = loan_duration * 12

  message("Your loan amount is: #{loan_amount}, your APR is #{apr * 100}% and your laon duration is #{loan_duration} years")

  monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**-month_duration))

  message("This means that your monthly payment amount is $#{monthly_payment}! Good luck paying that!")

  message('would you like to calculate another loan payment?(Y/N)')
  ans = gets.chomp.upcase
  break if ans == 'N'
end

message('Thanks for coming by!')
