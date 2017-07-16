# Description:
#
# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized.
#
# Examples:
#
# # returns "theStealthWarrior"
# to_camel_case("the-stealth-warrior")
#
# # returns "TheStealthWarrior"
# to_camel_case("The_Stealth_Warrior")

def to_camel_case(str)
  arr = str.split(/[ ,\-,_]/)
  newstr = ''
  arr.each_with_index do |word, index|
    newstr += index == 0 ? word : word.capitalize
  end
  return newstr
end

# Test Cases:
#
# Test.assert_equals(to_camel_case(''), '', "An empty string was provided but not returned")
# Test.assert_equals(to_camel_case("the_stealth_warrior"), "theStealthWarrior", "to_camel_case('the_stealth_warrior') did not return correct value")
# Test.assert_equals(to_camel_case("The-Stealth-Warrior"), "TheStealthWarrior", "to_camel_case('The-Stealth-Warrior') did not return correct value")
# Test.assert_equals(to_camel_case("A-B-C"), "ABC", "to_camel_case('A-B-C') did not return correct value")
