// Description:
//
// Very simple, given a number, find its opposite.
//
// Examples:
//
// 1: -1
// 14: -14
// -34: 34
// But can you do it in 1 line of code and without any conditionals?
// FUNDAMENTALS
// Suggest kata description edits
//
//
// Test Cases:
//
// Test.assertEquals(opposite(1), -1,)
// Test.assertEquals(opposite(0), 0,)
// Test.assertEquals(opposite(4.25), -4.25,)
// Test.assertEquals(opposite(3.3333333), -3.3333333,)
// Test.assertEquals(opposite(-12525220.3325), 12525220.3325,)
// Test.assertEquals(opposite(-5), 5,)

function opposite(number) {
    return number * (-1);
}
