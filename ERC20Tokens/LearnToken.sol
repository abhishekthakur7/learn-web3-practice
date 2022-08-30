//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

//This line imports the ERC-20 token standard from OpenZeppelin (OZ). OZ is an Ethereum security company. Among other things, OZ develops reference contracts 
//for popular smart contract standards which are thoroughly tested and secure. Whenever implementing a smart contract which needs to comply with a standard, 
//try to find an OZ reference implementation rather than rewriting the entire standard from scratch.
//You can look at the implementation of ERC-20 standard contract if you want by following the link - 
//https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";


//it says that this contract is an instance of ERC20. ERC20 in this case refers to the standard contract we imported from OpenZeppelin.
contract LearnToken is ERC20 {

    // we created constructor function that is called when the smart contract is first deployed. Within the constructor, 
    //we want two arguments from the user - _name and _symbol which specify the name and symbol of our cryptocurrency.
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {

            // _mint is an internal function within the ERC20 standard contract, which means that it can only be called by the contract itself. 
            // External users cannot call this function.
            // Since you as the developer want to receive some tokens when you deploy this contract, we call the _mint function to mint some tokens to msg.sender.
            // _mint takes two arguments - an address to mint to, and the amount of tokens to mint
            // msg.sender is a global variable injected by the Ethereum Virtual Machine, which is the address which made this transaction. Since you will be the one deploying this contract, your address will be there in msg.sender.
            //ERC20 tokens by default work with 18 decimal places. So 1 full LearnToken in this case, is actually represented as 10 ^ 18. 
            //Therefore, to get 1000 full LearnTokens, we use 1000 * 10 ** 18.
            _mint(msg.sender, 1000 * 10 ** 18);
    }

}