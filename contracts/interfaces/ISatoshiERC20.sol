//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

interface ISatoshiERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function version() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function supplyCap() external pure returns (uint);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function WBTC() external pure returns (address);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function DOMAIN_TYPE_HASH() external view returns (bytes32);
    function PERMIT_TYPE_HASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;

    function unpack(uint amount, address receiver) external returns (bool);
    function pack(uint amount, address receiver) external returns (bool);
    function unpack(uint amount) external returns (bool);
    function pack(uint amount) external returns (bool);
}
