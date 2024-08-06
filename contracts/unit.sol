// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract EtherUnit {
    uint256 onewei = 1 wei;
    // there are some unit conversion like 1 dollar equals 100 cent
    //   1 wei is equals to 1
    bool weiUnit = (onewei == 1);
    // 1 onegwei equals to 10^9 wei
    uint256 onegwei = 1 gwei;
    bool gweiUnit = (onegwei == 1e9);

    // 1 oneEther equals to 10^18 wei
    uint256 oneEther = 1 ether;
    bool etherUnit = (oneEther == 1e18);
}
