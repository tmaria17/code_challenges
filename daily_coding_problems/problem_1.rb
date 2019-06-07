# Good morning! Here's your coding interview problem for today.
#
# This problem was recently asked by Google.
#
# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
#
# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
#
# Bonus: Can you do this in one pass?
require 'pry'

num_array = [11, 15, 3, 7]

def two_numbers(array, target)
  if array.combination(2).find{|x,y| x+y==target}
    true
  else
    false
  end
end

puts two_numbers(num_array,14)
