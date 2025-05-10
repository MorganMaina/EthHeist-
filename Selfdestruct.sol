// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SelfDestructSender {
    address payable public vault;

    constructor(address payable _vault) payable {
        require(msg.value == 0.0005 ether, "Must send exactly 0.0005 ether");
        vault = _vault;
        selfdestruct(vault);
    }
}
