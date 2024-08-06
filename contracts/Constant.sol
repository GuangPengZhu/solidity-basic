// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract introConstant {
    // constant-declared can not change it's value and it's convention to use uppercase the variables name and must assign value when it declaring
    address constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    // there is another keyword also can't change it value but the timing is different it can declare fist and assign later
    address immutable MY_SECOND_ADDRESS;

    constructor() {
        // these place can init value to immutable
        MY_SECOND_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    }
}
