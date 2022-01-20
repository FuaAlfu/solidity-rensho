//cheer

pragma solidity >=0.7.0 <0.9.0;

/*
x >= y && x < z :: x greater or equal to y and less than z
x = pragma solidity
y = 0.7.0
z = 0.9.0
*/

contract simpleStorage{
    unit stroreData = 1962;
    string name = "fua";
    bool switchOn = false;

    uint number;

    //set func
    //public enables visibility so that we can call this outside of the contract
    function set(unit x)public{
        number = x;
    }

    //view
    function get()public view return (uint){
        return number;
    }
}