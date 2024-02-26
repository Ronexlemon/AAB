// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Calculator{
    uint public result;
    address public user;

    function add(uint256 a,uint256 b)public returns(uint){
        result = a+b;
        user = msg.sender;
        return  result;
    }

}