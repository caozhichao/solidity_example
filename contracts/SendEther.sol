//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// import "hardhat/console.sol";

// https://solidity-by-example.org/sending-ether/

/*

 */
contract SendEther {

  constructor() payable{

  }
  
  /*
   *
   * 接收以太地址必须是一个payable地址
   * 1. 外部账户地址 
   * 2. 如果是合约地址，合约中必须有fallback函数 并且 函数中不能有其他代码（gas限制），否则会失败
   * gas 2300限制
   */
  function transfer(address payable receiver,uint256 amount) public payable {
    // 从合约中转移到 receiver
    receiver.transfer(amount);
  }
  function send(address payable receiver,uint256 amount) public payable returns(bool){
    return receiver.send(amount);
  }
  function call(address payable receiver,uint256 amount,bytes memory data) public payable returns(bool,bytes memory){
    (bool success,bytes memory retData) = receiver.call{value:amount}(data);
    return (success,retData);
  }

  function balance() public view returns(uint256){
    return address(this).balance;
  }

}