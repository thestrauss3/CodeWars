// Description:
//
// Bob needs a fast way to calculate the volume of a cuboid with three values: length, width and the height of the cuboid. Write a function to help Bob with this calculation.
//
// Ruby: def get_volume_of_cuboid(length, width, height) Bash: bash run_shell length width height

var Kata;

Kata = (function() {
  function Kata() {}

  Kata.getVolumeOfCuboid = function(length, width, height) {
    return length * width * height;
  };

  return Kata;

})();

// Test Cases:
//
// Test.assertEquals(Kata.getVolumeOfCuboid(2, 5, 6), 60);
//
// Test.assertEquals(Kata.getVolumeOfCuboid(6.3, 3, 5), 94.5);
//
// Test.describe("should pass random tests", function() {
//   var h, i, j, l, w;
//   var results = [];
//   for (i = j = 1; j < 10; i = ++j) {
//     l = ~~(Math.random() * 100);
//     w = ~~(Math.random() * 100);
//     h = ~~(Math.random() * 100);
//     results.push(Test.assertEquals(Kata.getVolumeOfCuboid(l, w, h), l * w * h));
//   }
//   return results;
// });
