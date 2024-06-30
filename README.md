# ETH-AVAX-Assesment-1
## Overview
This repository contains The BarbieDollShop contract is designed to manage the buying and selling of dolls, maintaining inventory, prices, and market funds.

## State Variables
* dollInventory: Tracks the current number of dolls in inventory.
* dollPriceBuy: Private variable setting the price at which dolls are bought.
* dollPriceSell: Private variable setting the price at which dolls are sold.
* marketFund: Tracks the available funds in the market.

## Security Considerations
* 'requier()' : To validate user inputs and conditions before executing functions.
* 'revert()' : Used to abort transactions when critical conditions are not met, protecting against invalid state changes.
* 'assert()' : statements are employed to validate internal consistency post-transaction, ensuring that essential conditions are always upheld.
  
## Run in [REMIX IDE](https://remix.ethereum.org/)
1. To run this program, go to the Remix website at https://remix.ethereum.org/.
2. Create a new file.
3. Write the contract code.
4. Deploy the code.
5. Intract with the functions.

## Author
Riya Verma

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.

