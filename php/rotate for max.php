<!-- My first attempt failed because I wasn't accounting for a preleading 0 after breaking the number apart by digits. When the first digit of an integer is 0, the 0 is removed and then on the following rotation it isn't present.
For example 19043 should go 19043 -> 90431 -> 94310 -> 94103 and return the highest => 94310
Instead 19043 -> 90431 -> 90314 -> 90143 -> 90134 and returns the highest => 90431
 -->

<?php
function maxRot($n) {
  echo 'num: ' . $n . '<br>';
  $len = strlen((string)$n);
  $arr = [$n];
  $num = $n;
  for ($i = 0; $i < $len - 1; $i ++) {
    $num = rotDig($num, $i);
    array_push($arr, $num);
    echo 'new: ' . $num . '<br>';
  }
  return getMax($arr);
}

function rotDig($num, $dig) {
  $numLen = strlen((string)$num);
  $held = substr($num, 0, $dig);
  $heldLen = strlen((string)$held);
  $held = $held * pow(10, $numLen - $heldLen);
  $rot = $num - ($held);
  $result = $held + rot($rot);
  return $result;
}

function rot($num) {
  $len = strlen((string)$num);
  $first = substr($num, 0, 1);
  $new = $num - ($first * pow(10, $len - 1));
  $new = $new * 10 + $first;
  return $new;
}

function getMax($arr) {
  $max = 0;
  foreach ($arr as $num) {
    if ($num > $max) {
      $max = $num;
    }
  }
  echo 'max: ' . $max . '<br><br>';
  return $max;
}
?>

<!-- My first thought seeing this problem originally was to convert the number to an array, where each element was a digit but I wanted to avoid that. On my second go around, although I still believe that would be a viable option, I wanted to try converting it to a string. -->
<?php
function maxRot($n) {
  $s = (string)$n;
  $arr = [$s];
  for ($i = 0; $i < strlen($s) - 1; $i++) {
    $s = rotDig($s, $i);
    array_push($arr, $s);
  }
  return getMax($arr);
}

function rotDig($s, $d) {
  $hold = substr($s, 0, $d);
  $rot = substr($s, $d, strlen($s));
  return $hold . rot($rot);
}

function rot($s) {
  return substr($s, 1, strlen($s)) . substr($s, 0, 1);
}

function getMax($arr) {
  $max = 0;
  foreach ($arr as $num) {
    if ((int)$num > $max) {
      $max = (int)$num;
    }
  }
  return $max;
}
?>

<!-- Test Cases:

class MaxRotTestCases extends TestCase {
    private function revTest($actual, $expected) {
        $this->assertEquals($expected, $actual);
    }
    public function testBasics() {
        $this->revTest(maxRot(38458215), 85821534);
        $this->revTest(maxRot(195881031), 988103115);
        $this->revTest(maxRot(896219342), 962193428);
        $this->revTest(maxRot(69418307), 94183076);
        $this->revTest(maxRot(257117280), 571172802);
        $this->revTest(maxRot(240522578), 452782025);
        $this->revTest(maxRot(561656824), 666824515);
        $this->revTest(maxRot(672963486), 796348662);
        $this->revTest(maxRot(48192242), 89242412);
        $this->revTest(maxRot(25053359), 55392035);
        $this->revTest(maxRot(785727925), 877925752);
        $this->revTest(maxRot(275076894), 750768942);
        $this->revTest(maxRot(507992495), 507992495);
        $this->revTest(maxRot(461358517), 638517415);
        $this->revTest(maxRot(563692037), 669203753);
        $this->revTest(maxRot(159043701), 590437011);
        $this->revTest(maxRot(896304934), 963049348);
        $this->revTest(maxRot(273293210), 732932102);
        $this->revTest(maxRot(451496516), 549651641);
        $this->revTest(maxRot(1), 1);
    }
    private function _maxRotUN($n) {
        $s = strval($n); $res = ""; $mx = +$n;
        if (strlen($s) === 1) return $n;
        while (true) {
            $r = substr($s, 1, strlen($s)).$s[0];
            $s = $r;
            $res .= $s[0];
            $s = substr($s, 1, strlen($s));
            $nb = intval($res.$s);
            if ($nb > $mx)
                $mx = $nb;
            if (strlen($s) == 1) break;
        }
        return $mx;
    }
    public function testRandom() {
        for($i = 0; $i < 200; $i++) {
            $n = rand(100000,1000000000);
            $sol = $this->_maxRotUN($n) ;
            $ans = maxRot($n) ;
            //echo $sol."\n";
            $this->revTest($ans, $sol);
        }
    }
} -->
