// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;
contract Max{

function max(uint8[] calldata num) external pure  returns (uint8) {
  require(num.length> 0, "Length should be greater than zero");
uint8 maxnum = num[0];

for(uint8 i = 1; i<num.length; i++)
{
  

    if (maxnum < num[i]){
maxnum = num[i];
    }
}
return maxnum;
}
}