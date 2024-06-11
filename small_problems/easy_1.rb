#Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(words, num)
  if num <= 0
    puts 'Please only positive integers'
  else
     num.times do
        puts words
     end
    end
end

repeat('Hey guys!', 6)
