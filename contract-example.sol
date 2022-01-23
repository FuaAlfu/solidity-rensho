pragma solidity >=0.7.0 <0.9.0;

contract timer{
    uint time;

    //set func
    //public enables visibility so that we can call this outside of the contract
    function set(unit x)public{
        time = x * 5;
    }

    //view
    function get()public view return (uint){
        return time;
    }
}