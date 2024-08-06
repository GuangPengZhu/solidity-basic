// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract primitives {
    // =============boolean types=================
    bool public boo = true;
    // =============boolean types=================

    //============integer types ===========
    // behind int(8) are sizes
    // only can contain positive integer and the number of the types means 2 raised to the power of 8; 2**8 = 256; zero are the one
    uint8 unsignedInt = 255;
    // can include positive and negative but it's size are different from uint
    // the int8 is the 2 raised to the power of 7;  because need 1 bit to represent minus- and plus+
    int8 signedInt = -128;
    int8 signedInt2 = 127;
    //============integer types ===========

    // get maximum and minimum  of int
    int256 public max = type(int256).max;
    int256 public min = type(int256).min;

    // ==============start address types===============
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    address payable addr2 = payable(0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c);

    function someConversion() public {
        // payable types can implicit convert to the normal address typs whereas the don't have payable keyword types need to use payable(address)
        // like below would cause error
        //  addr2 = addr;
    }

    // ==============end address types===============

    // ==============start bytes  types===============
    // there are two types about bytes types; one is fixed-sized bytes arrays  the other are dynamic-sized bytes arrays
    bytes1 someByte = 0x5b;
    bytes1 b = 0x56; //  [01010110]
    // ==============end bytes  types===============

    // if you don't assign values while initiation then these  would be a default value like below
    //  bool public defaultBoo; // false
    // uint256 public defaultUint; // 0
    // int256 public defaultInt; // 0
    // address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
