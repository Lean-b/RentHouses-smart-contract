// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Ownable {
    // Dirección del propietario del contrato
    address private _owner;

    // Evento emitido al cambiar el propietario del contrato
    event OwnerChanged(address indexed oldOwner, address indexed newOwner);

    // Modificador que permite restringir el acceso a solo el propietario
    modifier onlyOwner {
        require(msg.sender == _owner, "Sender's address does not match the contract owner");
        _;
    }

    // Constructor del contrato que establece al creador como propietario
    constructor() {
        _owner = msg.sender;
    }

    // Función interna para transferir la propiedad del contrato
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0), "New owner is the zero address");
        emit OwnerChanged(_owner, newOwner);
        _owner = newOwner;
    }

    // Función pública para transferir la propiedad del contrato al nuevo propietario
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    // Función pública para obtener la dirección del propietario actual
    function getOwner() public view returns (address) {
        return _owner;
    }
}
