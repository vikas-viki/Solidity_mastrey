// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Loops {
    // for loop
    int256[] numbers = [-1, 3, 6, 5, 23, 64, 31, 9, 87];

    function for_loop(int256 _num) public view returns (uint256) {
        for (uint256 i = 0; i < numbers.length; i++) {
            if (numbers[i] == _num) {
                return 1;
            }
        }
        return 0;
    }

    // While loop.
    uint256 public counter2;

    function while_loop(uint256 _num) public returns (uint256) {
        while (counter2 < _num) {
            counter2++;
        }
        return counter2;
    }

    // do while loop.
    uint256 public counter3;

    function do_while_loop(uint256 _num) public returns (uint256) {
        do {
            counter3++;
        } while (counter3 < _num);

        return counter3;
    }


}
