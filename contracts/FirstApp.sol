// fist thing need to do is to declare License and pragmas
// SPDX-License-Identifier: MIT
// this means not less than 0.8.24 nor greater then 0.9.0
pragma solidity ^0.8.24;

contract counter {
    // thare are two types integer one is unsigned and anothor is signed integer
    // uint = unsigned only can contain  positive integer
    // int = signed can have a both negative and positive
    uint256 public count;

    function get() public view returns (uint256) {
        return count;
    }

    function decrease() public {
        count -= 1;
    }

    function increase() public {
        count += 1;
    }
}
