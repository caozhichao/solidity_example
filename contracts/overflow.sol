pragma solidity ^0.8.0;

contract Overflow {

  function test(uint8 a) public pure returns(uint8){
    return a + 1; //  0.4.0 溢出不报错，0.8.0  报错并回滚
  }
}