pragma solidity ^0.8.0;

contract bytes_test {
  
  bytes32 public constant MINT_ROLE = "a";
  bytes32 public constant MINT_ROLE2 = keccak256("a");
  function test() public pure returns(bytes memory) {
    return "a";
  }
}