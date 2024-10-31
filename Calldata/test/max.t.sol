// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;

import "../src/max.sol";
import "forge-std/Test.sol";
contract  MaxTest is Test{
Max maximum;
function  setUp() public{
maximum = new Max();
}
uint8[]  numbers = [1,2,3,4,59, 100];
uint8[] emptyarray;
function testMax() external view {
    

    assertEq(maximum.max(numbers), 100, " The maximun number is 59");
}

function testEmpty() external{
vm.expectRevert("Length should be greater than zero");
maximum.max(emptyarray);
}
}