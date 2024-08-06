// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MappingDemo {
    // key-value typs
    mapping(address => uint256) my_mapping;

    function setMaaping(address _addr, uint256 _someNnm) public {
        my_mapping[_addr] = _someNnm;
    }

    function getMappingValue(address _addr) public view returns (uint256) {
        return my_mapping[_addr];
    }

    function removeMapping(address _addr) public {
        delete my_mapping[_addr];
    }

    // nested mapping
    mapping(address => mapping(uint => bool)) public my_nestMapping;

    function setNestMaaping(address _addr, uint _nestKey,bool _boolVal) public {
        my_nestMapping[_addr][_nestKey] = _boolVal;
    }

    function getNestMappingValue(address _addr,uint _nestKey) public view returns (bool) {
        return my_nestMapping[_addr][_nestKey];
    }

    function removeNestMapping(address _addr,uint _nestKey) public {
        delete my_nestMapping[_addr][_nestKey];
    }
}
