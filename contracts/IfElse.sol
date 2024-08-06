// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract IfElse {
    function testSomeCondition(
        uint256 code
    ) public pure returns (string memory) {
        if (code == 1) {
            return "I will be returned if the condition is 1";
        } else if (code == 2) {
            return "I will be returned if the condition is 2";
        } else {
            return "I will be returned if previous two are not matched";
        }
    }

    function ternary(uint256 code) public pure returns (string memory) {
        string memory someWord = code == 1 ? "I was one" : " I was else";
        return someWord;
    }
}
