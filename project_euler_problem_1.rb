# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
def fizz_buzz_sum(range_min, range_max)
  fizz_buzz_nums = [ ]
  [*range_min..range_max].each do |number|
    if check_if_fizzbuzz(number)
      fizz_buzz_nums.push(number)
    end
  end
    return fizz_buzz_nums.sum
end

def check_if_fizzbuzz(number)
  number%3 == 0 || number%5 == 0
end

puts fizz_buzz_sum(0,999)
