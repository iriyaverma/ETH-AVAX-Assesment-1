// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract BarbieDollShop {
    uint public dollInventory;
    uint private dollPriceBuy; 
    uint private dollPriceSell; 
    uint public marketFund;

    constructor() {
        dollInventory = 10; // Initial inventory of 10 dolls
        dollPriceBuy = 100;
        dollPriceSell = 200;
        marketFund = 1000;
    }

    function buyDolls(uint _amount) public {
        require(_amount > 0, "Invalid amount");
        uint totalCost = _amount * dollPriceBuy;
        if (marketFund < totalCost) {
            revert("Insufficient funds in market");
        }
        marketFund -= totalCost;
        dollInventory += _amount;
        assert(marketFund >= 200); // Ensure market fund is atleast 200
    }

    function sellDolls(uint _amount) public {
        require(_amount > 0, "Invalid amount");
        if (dollInventory < _amount) {
            revert("Not enough dolls in inventory");
        }
        dollInventory -= _amount;
        marketFund += _amount * dollPriceSell;
        assert(dollInventory >= 2); 
    }
}
