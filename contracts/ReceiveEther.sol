//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ReceiveEther {

  string public statusMsg;
  event Log(string msg);
  function balance() public view returns(uint256){
    return address(this).balance;
  }
  
  receive() external payable {
      statusMsg = "receive";
    // emit Log("receive");
  }

  fallback() external payable{
    statusMsg = "fallback";
    // emit Log("fallback");
  }

}