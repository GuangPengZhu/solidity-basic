// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract simpleStorage {
    uint256 number;

    function setCount(uint256 _number) {
        number = _number;
    }

    function getCount() public view returns (uint256) {
        return number;
    }
}
