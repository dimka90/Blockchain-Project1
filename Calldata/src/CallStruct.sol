// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;

// Create a struct named Product with properties string name and uint256 price. 
//Write a function that accepts 
//an array of Product structs as calldata and calculates the total price of all product
contract StructCalldata{

struct Product{
    string name;
    uint256 price;
}
function productTotal(Product[] calldata _products) external  returns(uint256){

require(_products.length> 0, "Empty products");
uint256 total;
for(uint i; i<_products.length; i++){
    total += _products[i].price;
}
return total;
}

}