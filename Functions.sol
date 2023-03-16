// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Functions {

    uint public count = 0;
    string public name = "Vikas";
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    

    function increment() public {
        count = count + 1;
    }

    function decrement() public {
        count = count - 1;
    }

    function change( uint _num ) public {
        count = _num;
    }

    function changeName( string memory _name) public{
        name = _name;
    }

    function changeOwner( address _address) public {
        owner = _address;
    }

    function add(uint _num1, uint _num2) pure public returns(uint) {
        return _num1 + _num2;
    }

    function getCount() view public returns(uint){
        return count;
    }

}