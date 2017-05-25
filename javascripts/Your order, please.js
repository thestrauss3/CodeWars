// Description:
//
// Your task is to sort a given string. Each word in the String will contain a single number. This number is the position the word should have in the result.
//
// Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
//
// If the input String is empty, return an empty String. The words in the input String will only contain valid consecutive numbers.
//
// For an input: "is2 Thi1s T4est 3a" the function should return "Thi1s is2 3a T4est"

// Test Cases:
//
// Test.assertEquals(order("is2 Thi1s T4est 3a"), "Thi1s is2 3a T4est")
// Test.assertEquals(order("4of Fo1r pe6ople g3ood th5e the2"), "Fo1r the2 g3ood 4of th5e pe6ople")
// Test.assertEquals(order("d4o dru7nken sh2all w5ith s8ailor wha1t 3we a6"), "wha1t sh2all 3we d4o w5ith a6 dru7nken s8ailor")
// Test.assertEquals(order(""), "", "empty input should return empty string" )
// Test.assertEquals(order("3 6 4 2 8 7 5 1 9"), "1 2 3 4 5 6 7 8 9")
//
// Test.describe( "Some random tests", ()=>{
//
//   let names = "Alice;Bob;Cindy;Ernst;Fiona;Greg;Heidi;Igor;Jamila".split(";"),
//       rnd = (x) => ~~(Math.random()*x),
//       word = (n,x) => {
//         let l = n.length, i = rnd(l);
//         return n.slice(0,i)+(x+1)+n.slice(i)
//       };
//
//   function tst(){
//     let len = 3+rnd(6), 
//         exp = Test.randomize(names).slice(0,len).map(word),
//         inp = Test.randomize(exp).join(' ');
//     exp = exp.join(' ');
//     console.log("should work for "+inp);
//     Test.assertEquals(order(inp), exp);
//   }
//
//   for(let t=0; t<9; t++) tst()
// });



function order(words){
  if (words.length === 0) return "";
  var array = words.split(" ");
  var reg = /\d+/;
  var newArray = Array(array.length);
  array.forEach((word) => {
    var match = word.match(reg);
    newArray[match[0] - 1] = match.input
  })
  return newArray.join(' ')
}
