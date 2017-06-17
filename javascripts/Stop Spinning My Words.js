// Description:
//
// Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
//
//
// Examples:
//
// spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
// spinWords( "This is a test") => returns "This is a test"
// spinWords( "This is another test" )=> returns "This is rehtona test"

function spinWords(str){
  var arr = str.split(' ');
  var newArr = arr.map(word => {
    if (word.length > 4) {
      return spin(word);
    } else {
      return word;
    }
  })
  return newArr.join(' ');
}

function spin(word) {
  var arr = word.split('');
  var str = '';
  arr.forEach(char => {
    str = char + str;
  })
  return str;
}

// Test Cases:
//
// Test.assertEquals(spinWords("Welcome"), "emocleW");
// Test.assertEquals(spinWords("Hey fellow warriors"), "Hey wollef sroirraw");
// Test.assertEquals(spinWords("This is a test"), "This is a test");
// Test.assertEquals(spinWords("This is another test"), "This is rehtona test");
// Test.assertEquals(spinWords("You are almost to the last test"), "You are tsomla to the last test");
// Test.assertEquals(spinWords("Just kidding there is still one more"), "Just gniddik ereht is llits one more");
// Test.assertEquals(spinWords("Seriously this is the last one"), "ylsuoireS this is the last one");
