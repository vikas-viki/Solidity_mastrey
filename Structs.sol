// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Structures {

    struct mobile{
        uint256 price;
        uint256 cameras;
        string processor;
    }
    
    mapping(uint256 => mobile) public mobiles;

    function addNewMobile(uint256 _price, uint256 _cameras, string memory _processor) public {
        mobiles[0].price = _price;
        mobiles[0].cameras = _cameras;
        mobiles[0].processor = _processor;

    }


}