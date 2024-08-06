// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// there are three types of variables in solidity each has different scopes
// 1.local 2.state 3.global
contract TextVariables {
    // state variables
    string someThing = "I'm state variables function can access and modify me";

    function funcVariables() public pure returns (string memory) {
        string memory localVariable = "declared in function";
        return localVariable;
    }

    function getGlobal() public view {
        // being inject by solidity without to declare can directly access
        uint256 timestamp = block.timestamp;// Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}
