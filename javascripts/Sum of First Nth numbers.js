// Description:
//
// ###Task:
//
// Your task is to write a function which returns the sum of following series upto nth term(parameter).
//
// Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
// ###Rules:
//
// You need to round the answer upto 2 decimal places and return it as String.
// If the given value is 0 then it should return 0.00
// You will only be given Natural Numbers as arguments.
// ###Examples:
//
// SeriesSum(1) => 1 = "1"
// SeriesSum(2) => 1 + 1/4 = "1.25"
// SeriesSum(5) => 1 + 1/4 + 1/7 + 1/10 + 1/13 = "1.57"
// NOTE: In PHP the function is called series_sum().

function SeriesSum(n)
{
  var sum = 0;
  for (i = 0; i < n; i++) {
    sum += 1/(3*i + 1);
  }
  return sum.toFixed(2);
}

// Test Cases:
//
// Test.assertEquals(SeriesSum(1), "1.00")
// Test.assertEquals(SeriesSum(2), "1.25")
// Test.assertEquals(SeriesSum(3), "1.39")
// Test.assertEquals(SeriesSum(4), "1.49")
// Test.assertEquals(SeriesSum(5), "1.57")
// Test.assertEquals(SeriesSum(6), "1.63")
// Test.assertEquals(SeriesSum(7), "1.68")
// Test.assertEquals(SeriesSum(8), "1.73")
// Test.assertEquals(SeriesSum(9), "1.77")
// Test.assertEquals(SeriesSum(15), "1.94")
// Test.assertEquals(SeriesSum(39), "2.26")
// Test.assertEquals(SeriesSum(58), "2.40")
// Test.assertEquals(SeriesSum(0), "0.00")
//
// function randInt(min, max) {
//   return Math.floor(min + Math.random() * max);
// }
//
// function SSSolution(n)
// {
//   var dn = 1 + (n-1)*3;
//   var sum=0;
//   var term;
//    for( var i=1; i<=dn; i+=3)
//      {
//        term = 1/i;
//        sum+=term;
//       }
//   return sum.toFixed(2);
// }
//
// for(var i = 0; i < 37; i++) {
//   var n = randInt(0,250);
//   Test.assertEquals(SeriesSum(n), SSSolution(n));
// }
