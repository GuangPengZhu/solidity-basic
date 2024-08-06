// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Loop {
    //  there are three types of loops: wihle do while and for in

    function testLoop() public pure {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // which means if the condition is ture reach the continue then skip to next iteration without to execute the rest of code;
                continue;
            }

            if (i == 5) {
                // which means if the condition is ture reach the break then skip the whole iteration the rest of 5 will not be execute
                break;
            }
        }
        uint8 j = 0;
        while (j < 10) {
            j++;
        }
    }
}
