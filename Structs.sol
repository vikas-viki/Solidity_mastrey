// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Structures {

    
    struct mobile {
        string name;
        uint256 price;
        uint256 cameras;
        string processor;
    }

    mapping(uint256 => mobile) public mobiles;

    uint256 public numberOfMobiles = 0;

    function addNewMobile(
        
        uint256 _price,
        uint256 _cameras,
        string memory _processor
    ) public {

        mobiles[numberOfMobiles].price = _price;
        mobiles[numberOfMobiles].cameras = _cameras;
        mobiles[numberOfMobiles].processor = _processor;

        numberOfMobiles++;
    }
}
