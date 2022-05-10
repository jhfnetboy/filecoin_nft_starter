// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol"; //alows for console.logs in a solidity contract"

contract SaveGame {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    uint256 public recordNum;

    struct myRecord {
        address owner;
        string tokenURI;
        uint256 tokenId;
        string recordNowCID;
    }
    
    /* tokenURI
    {
        "name": "Hero mint from Main contract"
        "description": "NFT created for TID holder (tNFT) and limit to 100 for security"
        "image": //IPFS pinned file content CID (can be any mime type)
        "other data like version, strenth, etc....": ""
    }
    */
    event NewRecordSaved(address sender, uint256 tokenId, string tokenURI, string recordNowCID);

    //This sets our collection details. Anything minted by this contract will fall under this header
    constructor() {
        console.log("This is my save contract");
        recordNum=0; 
    }

    function saveRecord(string memory NewRecordCID) public  returns (uint256) {
        // recordNow = NewRecord;
        // return ture;
    }
}