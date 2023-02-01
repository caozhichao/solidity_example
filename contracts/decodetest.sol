pragma solidity ^0.8.0;
contract decodetest {


  function encode(uint8 a,uint32 b) external pure returns(bytes memory){
    bytes memory v = abi.encode(a,b);
    return v;
  }

  function decode(bytes calldata v) external pure returns(uint8,uint32){
    (uint8 a,uint32 b) = abi.decode(v,(uint8,uint32));
    return (a,b);
  }
}