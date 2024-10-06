// SPDX-License-Identifier: MIT
// Contrato de saludo dinamico en Solidity

// 0x97F2033Bbb52b311fB390988E3e9C977e611665f

pragma solidity 0.8.24;

contract Hola_Mundo_Dinamico {

    string Saludo_d = "Hola";
    string public Saludo_e = "Hola Estatico";

    function leerSaludo() public view returns (string memory) {
        return Saludo_d;
    }

    function guardarSaludo(string memory nuevoSaludo) public {
        Saludo_d = nuevoSaludo;
    } 

}