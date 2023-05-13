// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Uncomment this line to use console.loghttps://github.com/Lean-b/RentHouses-smart-contra
// import "hardhat/console.sol";

contract RentHouses {
    //owner: Dirección de la billetera del propietario.
    string private ownerName; //ownerName: Nombre del dueño.
    address private renterAddress; //renter: Dirección de la billetera del inquilino.
    string private renterName; //renterName: Nombre del inquilino 
    uint256 private rentPrice; //rentPrice: Precio del alquiler.
    uint256 private rentDuration; //rentDuration: Duración del contrato de alquiler acordado entre el propietario y el inquilino.
    uint256 private deposit; //deposit: Monto del depósito de garantía acordado entre el propietario y el inquilino.
    string private startDate; //startDate: Fecha de inicio del contrato de alquiler.
    string private endDate; //endDate: Fecha de finalización del contrato de alquiler.
    string private propertyAddress; //propertyAddress: Dirección de la propiedad que se está alquilando.
    bool private isContractActive; //isContractActive: Variable booleana que indica si el contrato está activo o no.
    bool private rentaPaid; //rentPaid: Variable booleana que indica si el inquilino ha pagado el alquiler o no.
    bool private depositPaid; //depositPaid: Variable booleana que indica si el inquilino ha pagado el depósito de garantía o no.
    bool private ownerApproval; //ownerApproval: Variable booleana que indica si el propietario ha aprobado el contrato de alquiler o no.


    //getRenterAddress; ver la dirrecion de la billetera cliente
    function getRenterAddress(address _renterAddress) view public returns (address) {
    return _renterAddress;
    }

    //getRenterName; ver el nombre del inquilino
    function getRenterName(string memory _renterName) view public returns (string memory) {
    return _renterName;
    }
    
    //getOwnerName; ver el nombre del propietario
    function getOwnerName(string memory _ownerName) view public returns (string memory) {
    return _ownerName;
    }
    //getRentDuration: ver la duracion del contrato 

    //getRentPrice; ver precio de alquiler 
    function getRentPrice() view public returns (uint256) {
       return; 
    }

    //Modificar el precio del alquiler

    //Actualizar el tiempo del contrato 

    //Withdraw retirar valor del dinero

    //Tranfer pago de alquiler 

    //setRentPrice(uint _rentPrice): Función para que el propietario establezca el precio del alquiler.
    function setRentPrice(uint _rentPrice) private {}
    //setRentDuration(uint _rentDuration): Función para que el propietario establezca la duración del contrato de alquiler.
    function setRentDuration(uint _rentDuration) private {}
    //setDeposit(uint _deposit): Función para que el inquilino establezca el depósito de garantía.
    function setDeposit(uint _deposit) private {}
    //signContract(): Función para que el propietario e inquilino firmen el contrato de alquiler.
    function singContract() private {}
    //payRent(): Función para que el inquilino realice el pago del alquiler acordado.
    function payRent()public payable {}
    //refundDeposit(): Función para que el propietario devuelva el depósito de garantía al inquilino al finalizar el contrato.
    function refunDeposit() private {}
    //terminateContract(): Función para que el propietario e inquilino finalicen el contrato de alquiler antes de la fecha de finalización.
    function terminateContract()public {}
    //approveContract(): Función para que el propietario apruebe el contrato de alquiler.
    function approveContract() private {}
    //getPropertyAddress(): Función para obtener la dirección de la propiedad que se está alquilando.
    function getPropertyAddress() view public returns (string memory) {
        return;
    }
    //getPropertyDetails(): Función para obtener detalles adicionales sobre la propiedad.
    function getPropertyDeta() view public returns (string memory) {
        return;
    }
}
