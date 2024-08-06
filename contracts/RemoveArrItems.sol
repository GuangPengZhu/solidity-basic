// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract removeItemByShfting {
    // the solidity don't privede array method to remove specifc items  so we need to do it mysife
    uint256[] public dynArr;

    // using shfting method will have its disadvantage are gas consumption is relative high
    // [1, 2, 3] -- remove(1) --> [1, 3, 3] --> [1, 3]
    // [1, 2, 3, 4, 5, 6] -- remove(2) --> [1, 2, 4, 5, 6, 6] --> [1, 2, 4, 5, 6]
    // [1, 2, 3, 4, 5, 6] -- remove(0) --> [2, 3, 4, 5, 6, 6] --> [2, 3, 4, 5, 6]
    // [1] -- remove(0) --> [1] --> []
    function removeItems(uint256 _i) public {
        require(_i < dynArr.length, "index out of bound");

        for (uint256 i = _i; i < dynArr.length - 1; i++) {
            // shfting
            dynArr[i] = dynArr[i + 1];
        }
        // remove the last one
        dynArr.pop();
    }

    function test() external {
        dynArr = [1, 2, 3, 4, 5];
        removeItems(2); // the dynArr should be [1,2,4,5]

        assert(dynArr[0] == 1); //the condition must be ture if not there will be reverted
        assert(dynArr[0] == 2); //the condition must be ture if not there will be reverted
        assert(dynArr[0] == 4); //the condition must be ture if not there will be reverted
        assert(dynArr[0] == 5); //the condition must be ture if not there will be reverted

        dynArr = [1];
        removeItems(0);
        // []
        assert(dynArr.length == 0);
    }
}
