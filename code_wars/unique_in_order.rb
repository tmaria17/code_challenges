require "pry"
# Instructions:
# Implement the function unique_in_order which takes as argument
# a sequence and returns a list of items without any elements with the same
#  value next to each other and preserving the original order of elements.

# For example: 
# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]
def unique_in_order(iterable)
  if iterable.is_a?(Array)
    iterable_array = iterable
  else
    iterable_array = iterable.chars
  end

  iterable_array.each_with_index do |item,i|
    iterable_array[i] = nil if iterable_array[i] == iterable_array[i+1]
  end.compact
end

puts unique_in_order('AAAABBBCCDAABBB')
