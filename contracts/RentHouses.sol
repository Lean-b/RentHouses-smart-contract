// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

import "./Ownable.sol";

contract RentHouses is Ownable {
    string private ownerName; //ownerName: Nombre del dueño.
    address private renterAddress; //renter: Dirección de la billetera del inquilino.
    string private renterName; //renterName: Nombre del inquilino
    uint256 private rentPrice; //rentPrice: Precio del alquiler.
    uint256 private rentDuration; //rentDuration: Duración del contrato de alquiler acordado entre el propietario y el inquilino.
    //uint256 private deposit; //deposit: Monto del depósito de garantía acordado entre el propietario y el inquilino.
    string private startDate; //startDate: Fecha de inicio del contrato de alquiler.
    string private endDate; //endDate: Fecha de finalización del contrato de alquiler.
    string private propertyAddress; //propertyAddress: Dirección de la propiedad que se está alquilando.

    bool private isContractActive; //isContractActive: Variable booleana que indica si el contrato está activo o no.
    bool private rentaPaid; //rentPaid: Variable booleana que indica si el inquilino ha pagado el alquiler o no.
    bool private depositPaid; //depositPaid: Variable booleana que indica si el inquilino ha pagado el depósito de garantía o no.
    bool private ownerApproval; //ownerApproval: Variable booleana que indica si el propietario ha aprobado el contrato de alquiler o no.

    mapping(address => mapping(address => uint256)) private balance;

    event Withdraw(address indexed from, uint256 amount);
    event PayRent(address indexed from, address indexed to, uint256 amount);

    constructor(
        string memory _ownerName,
        address _renterAddress,
        string memory _renterName,
        uint256 _rentPrice,
        string memory _startDate,
        string memory _endDate,
        string memory _propertyAddres
    ) {
        ownerName = _ownerName;
        renterAddress = _renterAddress;
        renterName = _renterName;
        rentPrice = _rentPrice;
        startDate = _startDate;
        endDate = _endDate;
        propertyAddress = _propertyAddres;
    }

    //getRenterAddress; ver la dirrecion de la billetera cliente
    function getRenterAddress(
        address _renterAddress
    ) public pure returns (address) {
        return _renterAddress;
    }

    //getRenterName; ver el nombre del inquilino
    function getRenterName(
        string memory _renterName
    ) public pure returns (string memory) {
        return _renterName;
    }

    //getOwnerName; ver el nombre del propietario
    function getOwnerName(
        string memory _ownerName
    ) public pure returns (string memory) {
        return _ownerName;
    }

    //getRentDuration: ver la duracion del contrato

    //getRentPrice; ver precio de alquiler
    function getRentPrice(uint256 _rentPrice) public pure returns (uint256) {
        return _rentPrice;
    }

    //Withdraw retirar valor del dinero

    //getBalance; cantidad de ether
    function getBalance() private view onlyOwner returns (uint256) {
        return address(this).balance;
    }

    //setRentPrice(uint _rentPrice): Función para que el propietario establezca el precio del alquiler.
    function setRentPrice(uint _rentPrice) private onlyOwner {
        rentPrice = _rentPrice;
    }

    //setRentDuration(uint _rentDuration): Función para que el propietario establezca la duración del contrato de alquiler.
    function setRentDuration(uint _rentDuration) private {}

    //setDeposit(uint _deposit): Función para que el inquilino establezca el depósito de garantía.
    function setDeposit(uint _deposit) private {}

    //signContract(): Función para que el propietario e inquilino firmen el contrato de alquiler.
    function singContract() private {}

    //payRent(): Función para que el inquilino realice el pago del alquiler acordado.
    function payRent() public payable {}

    //refundDeposit(): Función para que el propietario devuelva el depósito de garantía al inquilino al finalizar el contrato.
    function refunDeposit() private {}

    //terminateContract(): Función para que el propietario e inquilino finalicen el contrato de alquiler antes de la fecha de finalización.
    function terminateContract() public {}

    //approveContract(): Función para que el propietario apruebe el contrato de alquiler.
    function approveContract() private {}

    //getPropertyAddress(): Función para obtener la dirección de la propiedad que se está alquilando.
    function getPropertyAddress(
        string memory _propertyAddress
    ) public pure returns (string memory) {
        return _propertyAddress;
    }

    //Modificar el precio del alquiler

    //Actualizar el tiempo del contrato
}
