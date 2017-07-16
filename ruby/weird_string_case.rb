# Description:
#
# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.
#
# The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').
#
# Examples:
#
# weirdcase( "String" )#=> returns "StRiNg"
# weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"


# def weirdcase string
#   newstr = ''
#   string.each_char.with_index do |char, i|
#     next_char = i % 2 == 0 ? char.upcase : char.downcase
#     newstr += next_char
#   end
#   return newstr
# end

# def weirdcase string
#   arr = string.split
#   newstr = ''
#   arr.each do |word|
#     string.each_char.with_index do |char, i|
#       next_char = i % 2 == 0 ? char.upcase : char.downcase
#       newstr += next_char
#     end
#   end
#   return newstr
# end

def weirdcase string
  newstr = ''
  i = 0
  string.each_char.with_index do |char|
    next_char = i % 2 == 0 ? char.upcase : char.downcase
    newstr += next_char
    i += 1 if char.match(/[a-z,A-Z]/)
    i = 0 if char == ' '
  end
  return newstr
end


# Test Cases:
#
# describe 'weirdcase' do
#   it 'should return the correct value for a single word' do
#     words = ['This', 'is', 'a', 'test',
#       'Looks', 'like', 'you', 'passed']
#     words.each do |test|
#       solution = []
#       words = test.downcase.split ' '
#       words.each do |word|
#         word = word.split ''
#         (0...word.length).each do |index|
#           word[index] = word[index].upcase if index%2==0
#         end
#         solution.push word.join ''
#       end
#       Test.assert_equals(weirdcase(test), solution.join(' '));
#     end
#   end
#   it 'should return the correct value for multiple words' do
#     sentences = [
#       'This is a test',
#       'Looks like you passed',
#       'This is the final test case',
#       'Just kidding',
#       'Ok fine you are done now'
#     ];
#     sentences.each do |test|
#       solution = []
#       words = test.downcase.split ' '
#       words.each do |word|
#         word = word.split ''
#         (0...word.length).each do |index|
#           word[index] = word[index].upcase if index%2==0
#         end
#         solution.push word.join ''
#       end
#       Test.assert_equals(weirdcase(test), solution.join(' '));
#     end
#   end
# end
