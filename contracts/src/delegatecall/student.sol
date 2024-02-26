// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


contract Student{
    uint256 public mySum;
    address public studentAddress;

    function add(address calculator,uint256 a,uint256 b)public returns(uint256){
        (bool success, bytes memory result) = calculator.delegatecall(abi.encodeWithSignature("add(uint256,uint256)",a,b));
        require(success,"failed to delegate");
        return abi.decode(result, (uint256));

    }
}