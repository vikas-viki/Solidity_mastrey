// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

contract Parent1 {

    bool public hasFlowers = true;

    bool public hasFruits = true;

    function flowerColor() public pure virtual returns(string memory){
        return "Violet";
    }
}

contract Parent2 {

    bool public hasFlowers = true;

    bool public hasFruits = true;

    function flowerColor() public pure virtual returns(string memory){
        return "Violet";
    }
}

contract Child is Parent1, Parent2 {
    function flowerColor() public pure override returns(string memory){
        return "Violet + ornage";
    }
}