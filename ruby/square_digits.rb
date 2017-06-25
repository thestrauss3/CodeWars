# Description:
#
# Welcome. In this kata, you are asked to square every digit of a number.
#
# For example, if we run 9119 through the function, 811181 will come out.
#
# Note: The function accepts an integer and returns an integer

def square_digits(num)
  arr = num.to_s.chars.map(&:to_i)
  arr.map! {|x| x*x }
  arr.join.to_i
end

# Test Cases:
#
# #Test.describe("Premade Test: ")
# Test.assert_equals(square_digits(3212), 9414)
# Test.assert_equals(square_digits(2112), 4114)
#
# def square_digits_test num
# 	ret = ""
# 	num.to_s.each_char { |c| ret += (c.to_i**2).to_s }
#   ret.to_i
# end
#
# #Test.describe("Random Tests:")
#
# (0..100).each {
# 	randNum = rand(10000)
# 	Test.assert_equals(square_digits(randNum), square_digits_test(randNum))
# }
