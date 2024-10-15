// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Mapping {
    // Definimos un mapping de direcciones y enteros
    mapping (address => uint256) balnaces;

    // funcion para establecer el balance de avax en el mapping
    function setBalance(address _addr) public {
        uint256 avaxBalance = _addr.balance;
        balnaces[_addr] =avaxBalance;
    }

    // Funcion para obtener el valor del mapping en la direccion indice
    function getBalnace(address _addr) public view returns (uint256) {
        return balnaces[_addr];
    }

    // Funcion me permite eliminar un valor del mapping
    function remove(address _addr) public {
        delete balnaces[_addr];
    }

    // Funcion que llama otra funcion ya creada para actualizar los balances del mapping
    function updateBalanceAvax(address _addr) public {
        setBalance(_addr);
    } 
}