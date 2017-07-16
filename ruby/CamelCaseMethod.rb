# Description:
#
# Write simple .camelcase method (camel_case function in PHP) for strings. All words must have their first letter capitalized without spaces.
#
# For instance:
#
# 'hello case'.camelcase => HelloCase
# 'camel case word'.camelcase => CamelCaseWord

class String
  def camelcase
    arr = self.split(' ')
    str = ''
    arr.each do |word|
      str += word.capitalize
    end
    return str
  end
end

# Test Cases:
#
# Test.assert_equals('test case'.camelcase, 'TestCase')
# Test.assert_equals('camel case method'.camelcase, 'CamelCaseMethod')
# Test.assert_equals('say hello '.camelcase, 'SayHello')
# Test.assert_equals(' camel case word'.camelcase, 'CamelCaseWord')
