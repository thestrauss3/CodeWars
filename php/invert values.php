<!-- Description:

Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

Python/JS/PHP/Java:

invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
invert([]) == []
You can assume that all values are integers (and for C/C++: that all values are greater than INT_MIN). -->

<?php
  function invert(array $a): array {
    foreach ($a as $k=>$v) {
      $a[$k] = $v * -1;
    }
    return $a;
  }
?>

<!-- Test Cases:

class InvertTest extends TestCase {
  public function testFixed() {
    $this->assertEquals([-1, -2, -3, -4, -5], invert([1, 2, 3, 4, 5]));
    $this->assertEquals([-1, 2, -3, 4, -5], invert([1, -2, 3, -4, 5]));
    $this->assertEquals([], invert([]));
    $this->assertEquals([0], invert([0]));
  }
  protected function solution(array $a): array {
    return array_map(function ($n) {return -$n;}, $a);
  }
  protected function randomArray(): array {
    return array_map(function () {return rand(-100, 100);}, range(1, rand(1, 100)));
  }
  public function testRandom() {
    for ($i = 0; $i < 1e3; $i++) $this->assertEquals($this->solution($a = $this->randomArray()), invert($a));
  }
} -->
