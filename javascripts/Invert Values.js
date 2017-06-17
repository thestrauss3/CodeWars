// Description:
//
// Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.
//
// Python/JS/PHP/Java:
//
// invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
// invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
// invert([]) == []
// You can assume that all values are integers (and for C/C++: that all values are greater than INT_MIN).

function invert(array) {
  var newArray = array.map((item, index) => {
    return item * -1 + 0;
  })
  return newArray;
}

// Test Cases:
//
// describe("Invert array values", function(){
//   it("Basic Tests", function(){
//     Test.assertSimilar(invert([1,2,3,4,5]), [-1,-2,-3,-4,-5]);
//     Test.assertSimilar(invert([1,-2,3,-4,5]), [-1,2,-3,4,-5]);
//     Test.assertSimilar(invert([]), []);
//     Test.assertSimilar(invert([0]), [0]);
//   });
//   it("Random Tests", function() {
//
//     function rand(min, max) {
//         return Math.floor(Math.random() * (max - min)) + min;
//     }
//
//     function sol(array) {
//         return array.map(function(n) {return n === 0 ? 0: -n;});
//     }
//
//     function generateArr() {
//         var arr = [], n = rand(5, 100);
//         for(var i = 0; i < n; i++) {
//            arr.push(rand(-100,100));
//         }
//         return arr;
//     }
//
//     for(var i = 0; i < 100; i++) {
//       var v = generateArr();
//       Object.freeze(v);
//       Test.assertSimilar(invert(v), sol(v));
//     }
//   });
// });
