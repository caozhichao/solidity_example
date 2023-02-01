pragma solidity ^0.8.0;


contract A { // erc721

  function msgSender() external view returns(address) {
    return msg.sender;
  }
}

contract MsgSenderTest { // xy3 
  function test(address a) external view returns(address){
    // return a.msgSender();
    return A(a).msgSender();
    // return msg.sender;
  }
}