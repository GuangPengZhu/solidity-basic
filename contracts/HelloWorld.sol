// fist thing need to do is to declare License and pragmas  
// SPDX-License-Identifier: MIT
// this means not less than 0.8.24 nor greater then 0.9.0
pragma solidity ^0.8.24;

// declare a contract
contract HelloWorld {
    // declare a state variable with string typs 
    string public saysomething = 'helloworld';

    // declare function to get the state variable 
    function getSomethingToSay () view public returns (string memory) {
        return saysomething;
    }
}