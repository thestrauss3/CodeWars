<!-- Description:

Who remembers back to their time in the schoolyard, when girls would take a flower and tear its petals, saying each of the following phrases each time a petal was torn:

I love you
a little
a lot
passionately
madly
not at all
When the last petal was torn there were cries of excitement, dreams, surging thoughts and emotions.

Your goal in this kata is to determine which phrase the girls would say for a flower of a given number of petals, where nb_petals > 0. -->

<?php
function how_much_i_love_you(int $nb_petals): string {
  $n = $nb_petals % 6;
  $answers = ['not at all', 'I love you', 'a little', 'a lot', 'passionately', 'madly'];
  return $answers[$n];
}
?>

<!-- Test Cases:

class HowMuchILoveYouTest extends TestCase {
  public function testExamples() {
    $this->assertEquals("I love you", how_much_i_love_you(7));
    $this->assertEquals("a lot", how_much_i_love_you(3));
    $this->assertEquals("not at all", how_much_i_love_you(6));
  }
  public function testFixed() {
    $this->assertEquals("I love you", how_much_i_love_you(1));
    $this->assertEquals("a little", how_much_i_love_you(2));
    $this->assertEquals("passionately", how_much_i_love_you(4));
    $this->assertEquals("madly", how_much_i_love_you(5));
    $this->assertEquals("a little", how_much_i_love_you(8));
    $this->assertEquals("a lot", how_much_i_love_you(9));
    $this->assertEquals("passionately", how_much_i_love_you(10));
    $this->assertEquals("madly", how_much_i_love_you(11));
    $this->assertEquals("not at all", how_much_i_love_you(12));
    $this->assertEquals("passionately", how_much_i_love_you(100));
    $this->assertEquals("a little", how_much_i_love_you(500));
    $this->assertEquals("passionately", how_much_i_love_you(1e3));
  }
  protected function solution(int $n): string {
    return ["I love you", "a little", "a lot", "passionately", "madly", "not at all"][($n - 1) % 6];
  }
  public function testRandom() {
    for ($i = 0; $i < 1e3; $i++) $this->assertEquals($this->solution($n = rand(1, 1e6)), how_much_i_love_you($n));
  }
} -->
