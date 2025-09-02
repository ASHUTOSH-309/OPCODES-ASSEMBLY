// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.30;

import {HorseStore} from "../../src/horseStorev1/HorseStore.sol";
import {Test,console2} from "forge-std/Test.sol";


abstract contract Base_Testv1 is Test {
    HorseStore public horseStore;

    function setUp() public virtual {
       horseStore = new HorseStore();
    }

/*     function testReadValue() public {

        uint256 initialValue=horseStore.readNumberOfHorses();
        assertEq(initialValue,0);

    } */

    function testWriteValue(uint256 horseCount) public {
        horseStore.updateHorseNumber(horseCount);
        uint256 updatedValue = horseStore.readNumberOfHorses();
        assertEq(updatedValue, horseCount);
    }
}