//SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0;

// @title Optimized overflow and underflow safe math operations
// @notice Contains methods for doing math operations that revert on overflow or underflow for minimal gas cost
library SafeMath {

    function add(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require((z = x + y) >= x);
    }

    function sub(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require((z = x - y) <= x);
    }

    function mul(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require(x == 0 || (z = x * y) / x == y);
    }

    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        return x >= y ? x : y;
    }

    function min(uint256 x, uint256 y) internal pure returns (uint256) {
        return x < y ? x : y;
    }

}
