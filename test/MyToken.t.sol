// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/MyToken.sol";

contract MyTokenTest is Test {
    MyToken token;

    function setUp() public {
        token = new MyToken(1000);
    }

    function testTotalSupply() public view {
        assertEq(token.totalSupply(), 1000 * 10 ** token.decimals());
    }
}
