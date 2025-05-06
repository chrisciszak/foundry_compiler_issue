// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function run() public {
        test_Bytecode();
    }

    function test_Bytecode() public {
        bytes32 expectedBytecodeHash = 0xb597ae88862730236de33889a9e9bc2d4177b55427b03557eca863ef7689d860; // generated with forge script test/Bytecode.t.sol
        bytes memory bytecode = type(Counter).creationCode;
        console.logBytes32(keccak256(bytecode));
        assertEq(keccak256(bytecode), expectedBytecodeHash);
    }
}
