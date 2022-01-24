pragma solidity ^0.5.7;

contract will{
    address owner; //special type
    uint    fortune;
    bool    deceased;

    /*
    constructin func :: is a special type of function
    that is going to excute when we deploy our solidity
    */
    constructor() payable public{
        //when deploy this contract with payable, allwing to pay and recive eather
        //initialize our fortune with an ether balance
        owner = msg.sender; //represents address that being called..
        fortune = msg.value; //tell us how much eatheris being sent.
        deceased = false;
    }
}