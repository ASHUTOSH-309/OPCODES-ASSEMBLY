// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.30;

contract HorseStore {
    uint256 numberOfHorses;

    function updateHorseNumber(uint256 newNumberOfHorses) external {
        numberOfHorses = newNumberOfHorses;
    }

    function readNumberOfHorses() external  returns (uint256) {
        return numberOfHorses;
    }
}