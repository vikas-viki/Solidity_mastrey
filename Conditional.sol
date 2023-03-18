// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Conditionals {

    function isPrime(uint256 _num) public pure returns (bool) {
        bool prime = false;

        if (_num % 2 == 0) {   
            return false;
        } else if(){
            return true;
        }else{
            
        }

        _num % 2 == 0 ? prime = false : prime = true;

        return prime;
    }
}
