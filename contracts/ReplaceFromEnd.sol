// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ArrayReplaceFromEnd {
    // the solidity don't privede array method to remove specifc items  so we need to do it mysife
    uint256[] public dynArr;

    // using swapping method will have its disadvantage order are changede but it can save some gas consumption

    function removeItems(uint256 _i) public {
        //using replace to delete items
        if (_i == dynArr.length - 1) {
            dynArr.pop();
        } else {
            dynArr[_i] = dynArr[dynArr.length - 1];
            dynArr.pop();
        }
    }

    function test() external {
        dynArr = [1, 2, 3, 4, 5];
        removeItems(2); // the dynArr should be [1,2,5,4]

        assert(dynArr[0] == 1); //the condition must be ture if not there will be reverted
        assert(dynArr[0] == 2); //the condition must be ture if not there will be reverted
        assert(dynArr[0] == 5); //the condition must be ture if not there will be reverted
        assert(dynArr[0] == 4); //the condition must be ture if not there will be reverted

        dynArr = [1];
        removeItems(0);
        // // []
        assert(dynArr.length == 0);
    }
}
