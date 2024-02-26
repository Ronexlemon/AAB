// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import {IEntryPoint} from "account-abstraction/interfaces/IEntryPoint.sol";
import {BaseAccount} from "account-abstraction/core/BaseAccount.sol";
import {UserOperation} from "account-abstraction/core/";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract Wallet is BaseAccount{
    address public immutable walletFactory;
    IEntryPoint private immutable _entryPoint;

    constructor(IEntryPoint anEntryPoint, address ourWalletFactory) {
        _entryPoint = anEntryPoint;
        walletFactory = ourWalletFactory;
    }
    function entryPoint() public view override returns (IEntryPoint) {
    return _entryPoint;
 }
}