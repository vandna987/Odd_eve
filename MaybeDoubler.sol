// SPDX-License-Identifier: WTFPL
pragma solidity ^0.8.3;

contract MaybeDoubler {
    constructor () {}

    receive() external payable {
        address payable sender = payable(msg.sender);
        uint256 amount = msg.value;
        if (block.timestamp % 2 == 0) {
            sender.transfer(amount*2);
        }
        else {
            // You are fucked LOL!
        }
    }
}
