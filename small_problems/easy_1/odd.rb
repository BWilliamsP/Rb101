def is_odd?(num)
  if num % 2 == 0
    false
  else
    true
  end
end

puts "What number would you like to check?"

number = gets.chomp.to_i

puts is_odd?(number)



def is_odd2(number)
  number.remainder(2) != 0
end
