// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import {IEntryPoint} from "account-abstraction/interfaces/IEntryPoint.sol";

contract Wallet {
    address public immutable walletFactory;
    IEntryPoint private immutable _entryPoint;

    constructor(IEntryPoint anEntryPoint, address ourWalletFactory) {
        _entryPoint = anEntryPoint;
        walletFactory = ourWalletFactory;
    }
}