pragma solidity ^0.8.0;

interface ICallee {
  function setA(uint _a) external;
  function setA2(uint _a) external;
}

import "./Callee.sol";

contract Caller {

  function callSetA(Callee callee, uint a) public {
    callee.setA(a);
  }
  function callSetA2(address callee, uint a) public {
    ICallee(callee).setA(a);
  }
  function callSetA3(address callee, uint a) public {
    ICallee(callee).setA2(a);
  }
}