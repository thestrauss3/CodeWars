<!-- Description:

You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

#Examples:

Kata.getMiddle("test") should return "es"

Kata.getMiddle("testing") should return "t"

Kata.getMiddle("middle") should return "dd"

Kata.getMiddle("A") should return "A"
#Input

A word (string) of length 0 < str < 1000

#Output

The middle character(s) of the word represented as a string. -->

<?php
function getMiddle($text) {
  $len = strlen($text);
  if ($len % 2 == 0) {
    $str = substr($text, $len / 2 - 1, 2);
  } else {
    $str = substr($text, $len / 2 - .5, 1);
  }
  return $str;
}
?>

<!-- Test Cases:

class GetMiddleTests extends TestCase
{
    public function testBasics() {
      $this->assertEquals("es", getMiddle("test"));
      $this->assertEquals("t", getMiddle("testing"));
      $this->assertEquals("dd", getMiddle("middle"));
      $this->assertEquals("A", getMiddle("A"));
    }

    public function testRandomInput() {
      for($i = 0; $i < 50; $i++) {
        $mid = generateRandomString(1);
        if(rand(0, 1)) $mid = $mid . $mid;
        $ends = rand(0, 4);
        $input = generateRandomString($ends) . $mid . generateRandomString($ends);
        $this->assertEquals($mid, getMiddle($input), "Testing with: $input");
      }
    }
}

// from http://stackoverflow.com/a/4356295/145185
function generateRandomString($length) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
} -->
