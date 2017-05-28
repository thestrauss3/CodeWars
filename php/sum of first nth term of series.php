<!-- Description:

###Task:

Your task is to write a function which returns the sum of following series upto nth term(parameter).

Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
###Rules:

You need to round the answer upto 2 decimal places and return it as String.
If the given value is 0 then it should return 0.00
You will only be given Natural Numbers as arguments.
###Examples:

SeriesSum(1) => 1 = "1"
SeriesSum(2) => 1 + 1/4 = "1.25"
SeriesSum(5) => 1 + 1/4 + 1/7 + 1/10 + 1/13 = "1.57"
NOTE: In PHP the function is called series_sum(). -->

<?php
function series_sum($n) {
  $sum = 0;
  for ($i = 1; $i <= $n; $i ++) {
    $sum += 1/($i*3-2 );
  }
  return (string)round($sum,2);
}
?>

<!-- Test Cases:

class SeriesSumTest extends TestCase {
  public function testExamples() {
    $this->assertEquals('1.00', series_sum(1));
    $this->assertEquals('1.25', series_sum(2));
    $this->assertEquals('1.39', series_sum(3));
    $this->assertEquals('1.49', series_sum(4));
  }
  public function testFixed() {
    $this->assertEquals('1.57', series_sum(5));
    $this->assertEquals('1.63', series_sum(6));
    $this->assertEquals('1.68', series_sum(7));
    $this->assertEquals('1.73', series_sum(8));
    $this->assertEquals('1.77', series_sum(9));
    $this->assertEquals('1.94', series_sum(15));
    $this->assertEquals('2.26', series_sum(39));
    $this->assertEquals('2.40', series_sum(58));
    $this->assertEquals('0.00', series_sum(0));
    $this->assertEquals('1.87', series_sum(12));
    $this->assertEquals('1.89', series_sum(13));
  }
  protected function solution($n) {
    return $n === 0 ? '0.00' : strval(round(array_sum(array_map(function ($n) {return 1 / (3 * $n - 2);}, range(1, $n))), 2));
  }
  public function testRandom() {
    for ($i = 0; $i < 1e3; $i++) $this->assertEquals($this->solution($n = rand(0, 100)), series_sum($n));
  }
} -->
