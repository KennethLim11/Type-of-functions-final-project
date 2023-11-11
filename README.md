# Types of functions Project
This is the final project for module 3 wherein we will show the different types of functions.

## Description
In this code we will see the different kinds of functions. The owner will be the only one who is able to mint tokens, while any users can transfer and burn tokens.
There are 2 functions in the code:
1. mint() - only the owner of the contract can mint tokens.  
2. burn() - allows anyone to burn tokens.

There is also a constructor that takes in a name, symbol, and initialSupply as its parameters. This will be the newly created token. We also imported the OpenZeppelin library to help us create our token using the ERC20 standard.

## Getting Started

### Executing the program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., types-of-functions.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";


contract YourToken is ERC20 {
    address public Owner;
    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        Owner =msg.sender;
        _mint(msg.sender, initialSupply);
    }

    function mint(address account, uint256 amount) public {
        require(msg.sender == Owner, "You should be the owner of the contract");
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }
}



```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile types-of-functions.sol" button.

After compilation, the contract can be deployed by clicking the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "types-of-functions" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, click on the "types-of-functions" contract first on the left-hand sidebar, you can interact with it by clicking the different variables to see different information about the created token. You can also mint, burn, and transfer tokens, simply select the appropriate accounts when executing these functions to avoid errors.


## Authors

Kenneth Lim
Email : 202010039@fit.edu.ph


## License

This project is licensed under the MIT License - see the LICENSE.md file for details