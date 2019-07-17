# There is an array with some numbers. All numbers are equal except for one.
# Try to find it!

def find_uniq(arr)
  count_hash = Hash[arr.group_by {|array_value| array_value}.map {|k,v| [k,v.count]}]
  return count_hash.key(1)
end

# puts find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# puts find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
