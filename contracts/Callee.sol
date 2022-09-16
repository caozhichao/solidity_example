//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Callee {

  uint public a;
  string public statusMsg;

  function setA(uint _a) public {
    a = _a;
  } 
  fallback() external{
    statusMsg = "fallback";
  }
}