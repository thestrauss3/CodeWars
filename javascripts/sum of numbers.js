// Description:
//
// Given two integers, which can be positive and negative, find the sum of all the numbers between including them too and return it. If both numbers are equal return a or b.
//
// Note! a and b are not ordered!
//
// Example:
// GetSum(1, 0) == 1   // 1 + 0 = 1
// GetSum(1, 2) == 3   // 1 + 2 = 3
// GetSum(0, 1) == 1   // 0 + 1 = 1
// GetSum(1, 1) == 1   // 1 Since both are same
// GetSum(-1, 0) == -1 // -1 + 0 = -1
// GetSum(-1, 2) == 2  // -1 + 0 + 1 + 2 = 2
// Waiting for the Feedback! Thanks!

function GetSum( a,b ){
  if (a > b) {
    var sum = getSumInOrder(b,a)
  } else {
    var sum = getSumInOrder(a,b)
  }
  return sum;
}
function getSumInOrder(a,b) {
  var sum = 0;
  for (i = a; i <= b; i += 1) {
    sum += i;
  }
  return sum;
}

// Test Cases:
//
// Test.describe("Basic Tests:", function(){
//
//         Test.assertEquals(GetSum(5,-1),14);
//         Test.assertEquals(GetSum(505,4),127759);
//         Test.assertEquals(GetSum(321,123),44178);
//         Test.assertEquals(GetSum(-50,0),-1275);
//         Test.assertEquals(GetSum(-1,-5),-15);
//         Test.assertEquals(GetSum(-5,-5),-5);
//         Test.assertEquals(GetSum(-505,4),-127755);
//         Test.assertEquals(GetSum(-321,123),-44055);
//         Test.assertEquals(GetSum(0,0),0);
//         Test.assertEquals(GetSum(-5,-1),-15);
//         Test.assertEquals(GetSum(5,1),15);
//         Test.assertEquals(GetSum(-17,-17),-17);
//         Test.assertEquals(GetSum(17,17),17);
// });
//
// Test.describe("Random Tests:", function(){
//
//     function Get_Sum( a,b )
// {
//       var sum=0;
//       if(a>b) //Swapping Values to make a<b
//       {
//         a=a+b;
//         b=a-b;
//         a=a-b;
//       }
//       if(a==b) return a;
//       for( var i=a; i<=b; i++ ) sum+=i;
//       return sum;
// }
//
//     function randInt(min, max) {
//       return Math.floor(Math.random() * (max-min+1)+min);
//     }
//     for(var i = 1; i < 100; i++) {
//       var a = randInt(-600,600);
//       var b = randInt(-600,600);
//       Test.it("Testing for a="+a+" & b="+b,function(){
//       Test.assertEquals(GetSum(a,b),Get_Sum(a,b));
//       });
//     }
//
// });
