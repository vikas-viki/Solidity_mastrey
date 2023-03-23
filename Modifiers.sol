// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Modifier {

    modifier isOdd(uint256 _n) {
        require(_n % 2 != 0, "The given number  is even");
        _;
    }
    modifier isOdd1(uint256 _n) {
        require(_n % 2 != 0, "The given number  is even");
        _;
    }
// 5
    function onlyOdd(uint256 _num) external pure isOdd(_num) isOdd1(uint256 _n) returns (bool) {

        // some code.
        return true;
    }

    function onlyOdd(uint256 _num) external pure isOdd(_num) isOdd1(uint256 _n) returns (bool) {

        // some code.
        return true;
    }
}
