// SPDX-License-Identifier: MIT

// Have out invariant aka properties

// What are our invariants?
// 1. The total supply of DSC should be less than the total value of collateral
// 2. Getter view function should nevert revert <- evergreen invariant

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";
import {DeployDSC} from "../../script/DeployDSC.s.sol";
import {DSCEngine} from "../../src/DSCEngine.sol";
import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
import {HelperConfig} from "../../script/HelperConfig.s.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// contract OpenInvariantsTest is StdInvariant, Test {
//     DeployDSC deployer;
//     DSCEngine dsce;
//     DecentralizedStableCoin dsc;
//     HelperConfig config;
//     address weth;
//     address wbtc;

//     function setUp() external {
//         deployer = new DeployDSC();
//         (dsc, dsce, config) = deployer.run();
//         (,, weth, wbtc,) = config.activeNetworkConfig();
//         targetContract(address(dsce));
//     }

//     function invariant_protocolMustHaveMoreValueThanTotalSupply() public view {
//         // Get the value of all collateral in the protocol
//         // Compare it to all debt (dsc)
//         uint256 totalSupply = dsc.totalSupply();
//         uint256 totalWethDepisited = IERC20(weth).balanceOf(address(dsce));
//         uint256 totalWbtcDepisited = IERC20(wbtc).balanceOf(address(dsce));

//         uint256 wethValueInUsd = dsce.getUsdValue(weth, totalWethDepisited);
//         uint256 wbtcValueInUsd = dsce.getUsdValue(wbtc, totalWbtcDepisited);

//         console.log("wethValueInUsd: ", wethValueInUsd);
//         console.log("wbtcValueInUsd: ", wbtcValueInUsd);
//         console.log("totalSupply: ", totalSupply);

//         assert(wethValueInUsd + wbtcValueInUsd >= totalSupply);
//     }
// }
