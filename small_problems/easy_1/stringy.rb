#Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, 
#always starting with 1. The length of the string 
#should match the given integer.


def stringy(num)
  Array.new(num) { |i| i.odd? ? 0 : 1}.join
end

puts stringy(15)