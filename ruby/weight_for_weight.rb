# Description:
#
# My friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.
#
# I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.
#
# For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99. Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?
#
# Example:
#
# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: "100 180 90 56 65 74 68 86 99"
#
# When two numbers have the same "weight", let us class them as if they were strings and not numbers: 100 is before 180 because its "weight" (1) is less than the one of 180 (9) and 180 is before 90 since, having the same "weight" (9) it comes before as a string.
#
# All numbers in the list are positive numbers and the list can be empty.

def order_weight(strng)
  arr = []
  strng.split.each do |number|
    weight = 0
    number.split('').each do |digit|
      weight += digit.to_i
    end
    arr.push ({number: number, weight: weight})
  end
  arr.sort_by! { |hash| hash[:number] }
  arr.sort_by! { |hash| hash[:weight] }
  str = ''
  arr.each do |hash|
    str += hash[:number] + ' '
  end
  return str.strip
end

# Test Cases:
#
# def weight_str_nb1234(strn)
#     strn.split("").inject(0) { |sum, d| sum + d.to_i }
# end
# def comp1234(a, b)
#     if (weight_str_nb1234(a) == weight_str_nb1234(b)) then return a <=> b end
#     weight_str_nb1234(a) < weight_str_nb1234(b) ? -1 : 1
# end
# def order_weight1234(strng)
#     strng.split(' ').sort { |x, y| comp1234(x, y) }.join(" ")
# end
# def do_ex()
#     r = Random.new
#     i = 0
#     res = ""
#     while (i < 20) do
#         if (i % 2 == 0) then n = r.rand(1..500000) else n = r.rand(1..200) end
#         res += n.to_s + " "
#         i += 1
#     end
#     res + r.rand(1..100).to_s
# end
#
# Test.describe("Order Weight") do
#     Test.it("Basic tests") do
#         Test.assert_equals(order_weight("103 123 4444 99 2000"), "2000 103 123 4444 99")
#         Test.assert_equals(order_weight("2000 10003 1234000 44444444 9999 11 11 22 123"), "11 11 2000 10003 22 123 1234000 44444444 9999")
#         Test.assert_equals(order_weight(""), "")
#         Test.assert_equals(order_weight("10003 1234000 44444444 9999 2000 123456789"), "2000 10003 1234000 44444444 9999 123456789")
#         Test.assert_equals(order_weight("3 16 9 38 95 1131268 49455 347464 59544965313 496636983114762 85246814996697"),
#             "3 16 9 38 95 1131268 49455 347464 59544965313 496636983114762 85246814996697")
#         Test.assert_equals(order_weight("71899703 200 6 91 425 4 67407 7 96488 6 4 2 7 31064 9 7920 1 34608557 27 72 18 81"),
#             "1 2 200 4 4 6 6 7 7 18 27 72 81 9 91 425 31064 7920 67407 96488 34608557 71899703")
#         Test.assert_equals(order_weight("387087 176 351832 100 430372 8 58052 54 175432 120 269974 147 309754 91 404858 67 271476 164 295747 111 40"),
#             "100 111 120 40 8 54 91 164 147 67 176 430372 58052 175432 351832 271476 309754 404858 387087 295747 269974")
#     end
# end
#
# Test.describe("Random Tests") do
#     i = 0
#     while (i < 50) do
#         a = do_ex()
#         Test.assert_equals(order_weight(a), order_weight1234(a))
#         #p order_weight1234(a)
#         i += 1
#     end
# end
