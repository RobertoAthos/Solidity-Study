//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract WavePortal {

    string text;

    constructor(){
        console.log('Yo yo, im a contract and im smart');    
    }

    function Text() public{
        text = 'Store text in smart contract';
        console.log('owner', msg.sender);
    }

    function getTotalText() public view returns (string memory){
            console.log('Your text:', text);
            return text;
    }
}