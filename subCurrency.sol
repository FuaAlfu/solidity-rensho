pragma solidity ^0.5.7;

contract Coin{
    address public minter;
    mapping(address => uint) public balances;
    event Sent(address from, address to, uint amount);


//constructor only runs when we deploy contract..
constructor()payable public{
    minter = msg.sender;
}

function mint(address reciever,uint amount)public{
require(msg.sender == minter) //the owner
balances[reciever] +=  amount //or balances[reciever] = balances[reciever] + amount
}

error insufficientBalance(uint requested, uint available);

function send(address reciever, uint amount)public{
    if(amount > balances[msg.sender])
    revert insufficientBalance({
        requested: amount,
        available: balances[msg.sender]
    });
    balances[msg.sender] -= amount;
    balances[reciever] += amount;
    emit Sent(msg.sender, reciever,amount) //sign an event
}


}