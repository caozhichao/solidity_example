pragma solidity ^0.8.0;

contract keccak256_test {
  
  bytes32 public constant MANAGER_ROLE = keccak256("MANAGER");
  
  function getHash(string memory s) public pure returns (bytes32 hash) {
    return keccak256(abi.encodePacked((s)));
  }
}