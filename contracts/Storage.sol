//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Storage {
  // uint256 a;
  // uint8 b;
  // uint8 c;
  // struct S {
  //   uint8 b;
  //   uint256 a;
  //   uint8 c;
  // }
  // S s;
  // uint256[2] uintArr;
  // uint256[] dArr;
  mapping(uint256 => uint256) _map;
  constructor(){
    // a = 1;
    // b = 2;
    // c = 3;
    // s.a = 1;
    // s.b = 2;
    // s.c = 3;
    // uintArr[0] = 1;
    // uintArr[1] = 10;
    // dArr.push(10);
    // dArr.push(11);
    _map[1] = 100;

  }
}