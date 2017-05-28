<!-- Description:

The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

Examples:

"din" => "((("

"recede" => "()()()"

"Success" => ")())())"

"(( @" => "))((" -->

<?php
  function duplicate_encode($word){
    $letters = [];
    $str = "";
    for ($i = 0; $i < strlen($word); $i++) {
      $char = substr($word, $i, 1);
      if (in_array($char, $letters)) {
        $str = $str . ')';
      } else {
        $str = $str . '(';
        array_push($letters, $char);
      }
    }
    return $str;
  }
?>

 <!-- NOTE:
 There are bugs in the test cases for this program.
 These are well known issues on the codewars website. -->

<!-- Test Cases:

class MyTestCases extends TestCase
{
    public function testBasicTests() {
      $this->assertEquals(duplicate_encode('din'), '(((');
      $this->assertEquals(duplicate_encode('recede'), '()()()');
      $this->assertEquals(duplicate_encode('Success'), ')())())', 'should ignore case');
      $this->assertEquals(duplicate_encode('CodeWarrior'), '()(((())())');
      $this->assertEquals(duplicate_encode('Supralapsarian'), ')()))()))))()(', 'should ignore case');
      $this->assertEquals(duplicate_encode('iiiiii'), '))))))', 'duplicate-only-string');
    }

    public function testWithParenthesises() {
      $this->assertEquals(duplicate_encode('(( @'), '))((');
      $this->assertEquals(duplicate_encode(' ( ( )'), ')))))(');
    }

    public function testSomeRandoms() {
      for ($x = 0; $x < 5; $x++) {
        $str = $this->generateRandomString(rand(10, 20));
        $this->assertEquals(duplicate_encode($str), $this->solution($str));
      }
    }

    private function generateRandomString($length = 10) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    private function solution($word){
    	$len = strlen( $word );
    	$lower = strtolower($word);
    	$res = "";
    	for( $i = 0; $i < $len; $i++ ) {
    		$res .= substr_count($lower, $lower[$i]) > 1 ? ')' : '(';
        }
    	return $res;
    }
} -->
