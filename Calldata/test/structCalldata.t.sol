// SPDX-License-Identifier: MIT

import "forge-std/Test.sol";
import "../src/CallStruct.sol";
pragma solidity ^0.8.26;

contract StructTest is Test{

StructCalldata data;
StructCalldata.Product[] _products;
function setUp() public{
data = new StructCalldata();

}

function testStruct() external{

   _products.push(StructCalldata.Product({name:"Dimka", price: 200}));
   _products.push(StructCalldata.Product({name:"Spagheti", price: 400}));
   assertEq(data.productTotal(_products), 600, "total should be 200" );
}
}