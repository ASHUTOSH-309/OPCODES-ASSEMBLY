// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.30;

import {Base_Testv1} from "./Base_Testv1.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
import {HorseStore} from "./Base_Testv1.t.sol";

contract HorseStoreHuff is Base_Testv1 {
    string public constant HORSE_STORE_HUFF_LOCATION =
        "horseStorev1/horseStorev1";

    function setUp() public override {
        horseStore = HorseStore(HuffDeployer.config().deploy(HORSE_STORE_HUFF_LOCATION));
    } 
}
