// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ArrayDemo {
    // there are two types of arrays one is fixed size and the another is dynamic sized
    // dynamic sized array
    uint256[] public dynArra = [1, 2, 3];

    function getItem(uint256 i) public view returns (uint256) {
        return dynArra[i];
    }

    // get arr length
    function getLength() public view returns (uint256) {
        return dynArra.length;
    }

    function setItem(uint256 i, uint256 otherInt) public {
        dynArra[i] = otherInt;
    }

    // only dynamic array has the push and pop method
    function addItem(uint256 otherInt) public {
        dynArra.push(otherInt);
    }

    // the delete keyword would not change it's length just set it's value to zero
    function removeValue(uint256 i) public {
        delete dynArra[i];
    }

    // the pop method would remove items and change it's length from the bottom
    function removeItemFromBot() public {
        dynArra.pop();
    }

    // fixed sized array
    uint256[5] public fixedArra;

    // uint256[] memory dyniArr = new uint256[](5);

    function examples() public pure returns (uint256) {
        // created array with memory keyword must assign fixed size value
        uint256[] memory dyniArr = new uint256[](5);
        return dyniArr.length;
    }
}
