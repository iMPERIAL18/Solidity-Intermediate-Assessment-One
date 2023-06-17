// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AssessmentOne {
    mapping(address => uint) balances;

    function depositCoin(address _address, uint _value) public payable {
        require(_value >= 500, "Minimum amount required to deposit is 500");
        balances[_address] += _value;
    }

    function shoeSize(uint _size) public pure returns (string memory) {
        if (_size != 10) {
            revert("look for another size");
        }

        return "this shoe is your size";
    }

    function withdrawCoin(address _address, uint _value) public {
        assert(balances[_address] >= _value);
        balances[_address] -= _value;
    }
}
