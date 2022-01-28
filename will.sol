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

    
    /*
    1)create modifire so the only person who can call the contract is the owner
    2)create modifire so that we only allecate funds if friends gramps deceased...
    */

    //1
    modifire onlyOwner{
        //conditional statement
        require(msg.sender == owner);
        _; //to shift to the actual function, after we run this modifire
    }

    //2
    modifire mustBeDeceased{
        //conditional statement
        require(deceased == true);
        _; //to shift to the actual function, after we run this modifire
    }

    //arrays :: create list of items..
    address payable[] familyWallets
    mapping(adress => uint) inheritance

    //set inheritance for each address
    function setInheritance(address payable wallet, uint amount)public{
        familyWallets.push(wallet);
        inheritance[wallet] = amount;
    }

    //pay each family member based on their wallet address
    function payout() private mustBeDeceased{
        for(i = 0; i < familyWallets.length; i++){
            familyWallets[i].transfer(inheritance[familyWallets[i]])
            //transfering the funds from contract addres to reciver address
        }
    }

    //oracle simulated switch
    function hasDeceased() public onlyOwner{
        isDeceased = true;
        payout();
    }
}