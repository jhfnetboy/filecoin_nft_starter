
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol"; //alows for console.logs in a solidity contract"

contract EventExample {
   event DataStored(uint256 data1, uint256 indexed data2);
   uint256 data1;
   uint256 data2;
   function storeData(uint256 _data1, uint256 _data2) external {
      data1 = _data1;
      data2 = _data2;
      emit DataStored(data1, data2);
   }
}
