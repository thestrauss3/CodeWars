# Description:
#
# Two tortoises named A and B must run a race. A starts with an average speed of 720 feet per hour. Young B knows she runs faster than A and furthermore has not finished her cabbage.
#
# When she starts, at last, she can see that A has a 70 feet lead but B speed is 850 feet per hour. How long will it take B to catch A?
#
# More generally: given two speeds v1 (A speed, integer > 0) and v2 (B speed, integer > 0) and a lead g (integer > 0) how long will it take B to catch A?
#
# The result will be an array [h, mn, s] where h, mn, s is the time needed in hours, minutes and seconds (don't worry for fractions of second). If v1 >= v2 then return nil, nothing, null, None or {-1, -1, -1} for C++, C, Go.
#
# Examples:
#
# race(720, 850, 70) => [0, 32, 18]
# race(80, 91, 37) => [3, 21, 49]
# Note: you can see some other examples in "Your test cases".

def race(v1, v2, g)
  return nil if v1 >= v2
  diff = (v2 - v1).to_f
  hr = (g / diff).floor
  min = ((((g / diff) - hr) * 60) + 0.00000001).floor
  sec = ((((((g / diff) - hr) * 60) - min) * 60) + 0.00000001).floor
  [hr, min, sec]
end

# Test Cases:
#
# Test.describe("Race") do
#     Test.it("Basic Tests") do
#         Test.assert_equals(race(720, 850, 70), [0, 32, 18])
#         Test.assert_equals(race(80, 91, 37), [3, 21, 49])
#         Test.assert_equals(race(80, 100, 40), [2, 0, 0])
#         Test.assert_equals(race(720, 850, 37), [0, 17, 4])
#         Test.assert_equals(race(720, 850, 370), [2, 50, 46])
#         Test.assert_equals(race(120, 850, 37), [0, 3, 2])
#         Test.assert_equals(race(820, 850, 550), [18, 20, 0])
#         Test.assert_equals(race(820, 81, 550), nil)
#     end
# end
#
# Test.describe("Random Tests") do
#     def sol1378(v1, v2, g)
#         d = v2 - v1
#         if (d <= 0) then return nil end
#         h = g / d
#         r = g % d
#         mn = r * 60 / d
#         s = (r * 60 % d) * 60 / d
#         [h, mn, s]
#     end
#
#     r = Random.new
#     i = 0
#     nb = 50
#     while (i < nb) do
#         v1 = r.rand(50..750)
#         v2 = r.rand(v1 + 20..850)
#         g = r.rand(60..150)
#         #p [v1, v2, g]
#         Test.assert_equals(race(v1, v2, g), sol1378(v1, v2, g))
#         i += 1
#     end
# end
