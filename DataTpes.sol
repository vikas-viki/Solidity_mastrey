// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract DataTypes {

    // Stors numbers
    int num1 = -1223;
    

    // Stores unsigned numbers (niether + nor -)
    uint num2 = 123;

    // Used to store address of node/contract.
    address owner = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    // Used to store string.
    string name = "name";

    // Creaing an initializing array (integer array).
    int256[] numArr = [int256(1), 2, -3, 4];

    // Address array.
    address[] add = [0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678];

    // Mapping, kind of table which stores `address` in left column & un signed integers in right column.
    mapping(address => uint) people;

    // Intializing table (mapping)
    /*
    people[0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2] = 123;
    people[0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2] = 123;
    people[0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2] = 123;
    people[0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2] = 123;
    people[0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2] = 123;
    people[0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2] = 123;
    */
}
