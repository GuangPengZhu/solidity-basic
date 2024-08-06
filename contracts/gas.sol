// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Name {
    uint256 someValue = 0;

    function doSamethingToSomeValue() public {
        // the funcation will cause infinite gas and will failed but the fee(gas) will not be returned so be careful 
        while (true) {
            someValue += 1;
        }
    }
}
