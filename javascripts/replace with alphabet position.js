// Description:
//
// Welcome. In this kata you are required to, given a string, replace every letter with its position in the alphabet. If anything in the text isn't a letter, ignore it and don't return it. a being 1, b being 2, etc. As an example:
//
// alphabet_position("The sunset sets at twelve o' clock.")
// Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (As a string.)

function alphabetPosition(text) {
  var str = text.toLowerCase()
  var nums = ""
  for (i = 0; i < str.length; i += 1) {
    var num = " " + (str.charCodeAt(i) - 96).toString()
    if (0 < num && num <= 26) {
      nums += num
    }
  }
  return nums.substr(1)
}

// Test Cases:
//
// function ap(text) {
//   return text.toLowerCase().split('').filter(function(l) {
//     return /[a-z]/.test(l);
//   }).map(function(l) {
//     return l.charCodeAt() - 96;
//   }).join(' ');
// }
//
// function randomChar() {
//   var chars = 'abcdefghijklmnopqrstuvwxyz1234567890-=!@#$%^&*()_+[];,./\{}:|<>? ',
//       rand  = Math.floor(Math.random() * chars.length);
//   return chars[rand];
// }
//
// console.log("Tests for each letter:");
//
// for(var i = 65; i <= 90; i++) {
//   var letter = String.fromCharCode(i);
//   Test.assertEquals(alphabetPosition(letter), ap(letter));
// }
//
// console.log("Randomly generated tests:");
// for(var i = 0; i < 50; i++) {
//   var x = ""
//   for(var j= 0; j < 8; j++) {
//     x += randomChar();
//   }
//   console.log('Testing', x);
//   Test.assertEquals(alphabetPosition(x), ap(x));
// }
