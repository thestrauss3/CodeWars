<!-- Description:

Timmy & Sarah think they are in love, but around where they live, they will only know once they pick a flower each. If one of the flowers has an even number of petals and the other has an odd number of petals it means they are in love.

Write a function that will take the number of petals of each flower and return true if they are in love and false if they aren't. -->

<?php
function lovefunc($flower1, $flower2) {
    return $flower1 % 2 != $flower2 % 2;
}
?>

<!-- Test Cases:

class MyTestCases extends TestCase
{
    public function testExample() {
        $this->assertTrue(lovefunc(1, 4));
        $this->assertFalse(lovefunc(2, 2));
        $this->assertTrue(lovefunc(0, 1));
        $this->assertFalse(lovefunc(0, 0));
    }

    /**
     * @dataProvider additionProvider
     */
    public function testRandom($a, $b, $expected)
    {
        $this->assertSame($expected, lovefunc($a, $b));
    }

    public function additionProvider()
    {
        $data = [];
        for ($i = 0; $i < 20; $i++) {
            $a = rand(0, 100);
            $b = rand(0, 100);
            $data[] = [$a, $b, ($a % 2 !== $b % 2)];
        }
        return $data;
    }
} -->
