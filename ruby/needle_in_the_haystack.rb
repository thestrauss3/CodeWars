# Description:
#
# Can you find the needle in the haystack?
#
# Write a function findNeedle() that takes an array full of junk but containing one "needle"
#
# After your function finds the needle it should return a message (as a string) that says:
#
# "found the needle at position " plus the index it found the needle
#
# So
#
# find_needle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])
# find_needle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])
# findNeedle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])
# findNeedle(new Object[] {"hay", "junk", "hay", "hay", "moreJunk", "needle", "randomJunk"})
# find_needle(["hay", "junk", "hay", "hay", "moreJunk", "needle", "randomJunk"])
# should return
#
# 'found the needle at position 5'
# 'found the needle at position 5'
# 'found the needle at position 5'
# "found the needle at position 5"
# "found the needle at position 5"


def find_needle(haystack)
  "found the needle at position " + haystack.index("needle").to_s
end

 
# Test Cases:
#
# Test.describe("Basic tests") do
# Test.assert_equals(find_needle(['3', '123124234', nil, 'needle', 'world', 'hay', 2, '3', true, false]), 'found the needle at position 3')
# Test.assert_equals(find_needle(['283497238987234', 'a dog', 'a cat', 'some random junk', 'a piece of hay', 'needle', 'something somebody lost a while ago']), 'found the needle at position 5')
# Test.assert_equals(find_needle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,'needle',1,2,3,4,5,5,6,5,4,32,3,45,54]), 'found the needle at position 30')
# Test.assert_equals(find_needle(['needle',1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54]), 'found the needle at position 0')
# Test.assert_equals(find_needle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,1,2,3,4,5,5,6,5,4,32,3,45,54,'needle']), 'found the needle at position 43')
# end
#
# Test.describe("Basic tests") do
# def randint(a,b) rand(b-a+1)+a end
# def sol(h) "found the needle at position #{h.index("needle")}" end
# junk=["light saber","Pippi","senzu bean","a gundam","double harken","Batman's cowl","a desert eagle","elda taluta","sarkus sark","Madlax","Carsomyr +5, the Holy Avenger","poo","dirt","dust","honey","sugar","flour","milk","glue","a tumbleweed","powder"]
#
# 40.times do
#   h=((0..randint(1,10**randint(1,4))).map{junk[randint(0,junk.length-1)]}+["needle"]).shuffle
#   Test.it("Testing for #{h.length>100 ? "a very big haystack" : h.inspect}") do
#   Test.assert_equals(find_needle(h), sol(h), "It should work for random inputs too")
#   end
# end
# end
