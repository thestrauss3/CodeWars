# Description:
#
# Write function scramble(str1,str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.
#
# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.
#
# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered

def scramble(s1,s2)
  s2.split('').each do |char|
    return false if s1.sub!(char, '').nil?
  end
  return true
end

# Test Cases:
#
# Test.describe("Basic tests") do
# Test.assert_equals(scramble('rkqodlw','world'),true)
# Test.assert_equals(scramble('cedewaraaossoqqyt','codewars'),true)
# Test.assert_equals(scramble('katas','steak'),false)
# Test.assert_equals(scramble('scriptjavx','javascript'),false)
# Test.assert_equals(scramble('scriptingjava','javascript'),true)
# Test.assert_equals(scramble('scriptsjava','javascripts'),true)
# Test.assert_equals(scramble('javscripts','javascript'),false)
# Test.assert_equals(scramble('aabbcamaomsccdd','commas'),true)
# Test.assert_equals(scramble('commas','commas'),true)
# Test.assert_equals(scramble('sammoc','commas'),true)
# end
# def randint(a,b) rand(b-a+1)+a end
# base="abcdefghijklmnopqrstuvwxy"
# def solver(s1,s2)
#   acc={}
#   s1.each_char{|l| acc[l]=(acc[l] or 0)+1}
#   s2.each_char do |l|
#     acc[l]=(acc[l] or 0)-1
#     if acc[l]==-1 then return false end
#   end
#   return true
# end
#
# Test.describe("Random tests") do
# 30.times do
#     s1,s2=[],[]
#     randint(10,20).times do
#       s1+=[base[randint(0,base.length-1)]]
#     end
#     randint(10,20).times do
#       s2+=[base[randint(0,base.length-1)]]
#     end
#     s1,s2=s1.join,s2.join
#     Test.it("Testing for #{s1} and #{s2}") do
#     Test.assert_equals(scramble(s1,s2),scramble(s1,s2),"It should work with random inputs too")
#     end
# end
# end
#
# Test.describe("Performance tests") do
# 10.times do
#     s2=[]
#     randint(20000,25000).times do
#       s2+=[base[randint(0,base.length-1)]]
#     end
#     if randint(0,1)==0 then s2+=["z"] end
#     s2=s2.join
#     s1=s2*2
#     Test.it("Testing for strings up to #{s1.length} characters") do
#     Test.assert_equals(scramble(s1,s2),scramble(s1,s2),"It should work with random inputs too")
#     end
# end
# end
