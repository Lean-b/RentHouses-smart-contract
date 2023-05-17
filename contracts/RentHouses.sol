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
    uint256 private rentDurationYear; //rentDuration: Duración del contrato de alquiler acordado entre el propietario y el inquilino.
    string private startDate; //startDate: Fecha de inicio del contrato de alquiler.
    string private endDate; //endDate: Fecha de finalización del contrato de alquiler.
    string private propertyAddress; //propertyAddress: Dirección de la propiedad que se está alquilando.

    mapping(address =>  uint256) private balance;

    //event Withdraw(address indexed from, uint256 amount);
    //event PayRent(address indexed from, address indexed to, uint256 amount);

    constructor(
        string memory _ownerName,
        string memory _renterName,
        address _renterAddress,
        uint256 _rentPrice,
        string memory _startDate,
        string memory _endDate,
        string memory _propertyAddress,
        uint256 _rentDurationYears
    ) {
        ownerName = _ownerName;
        renterName = _renterName;
        renterAddress = _renterAddress;
        rentPrice = _rentPrice * 1e18;
        startDate = _startDate;
        endDate = _endDate;
        propertyAddress = _propertyAddress;
        rentDurationYear = _rentDurationYears * (365 days);
    }



    //getRenterName; ver el nombre del inquilino
    function getRenterName() public view returns (string memory) {
        return renterName;
    }

    //getOwnerName; ver el nombre del propietario
    function getOwnerName() public view returns (string memory) {
        return ownerName;
    }

    //getRentPrice; ver precio de alquiler
    function getRentPrice() public view returns (uint256) {
        return rentPrice * 1e18;
    }

    //getBalance; cantidad de ether
    function getBalance() public view onlyOwner returns (uint256) {
        return address(this).balance;
    }

    //setRentPrice(uint _rentPrice): Función para que el propietario establezca el precio del alquiler.
    function setRentPrice(uint _rentPrice) public onlyOwner {
        rentPrice = _rentPrice * 1e18;
    }

    //getPropertyAddress(): Función para obtener la dirección de la propiedad que se está alquilando.
    function getPropertyAddress() public view returns (string memory) {
        return propertyAddress;
    }

    //payRent(): Función para que el inquilino realice el pago del alquiler
    function payRent(uint256 _amount,address _renterAddress) public payable returns (bool){
        //require renter address
        require(renterAddress == _renterAddress,"Only the renter can pay the rent");
        balance[msg.sender] += _amount;
        return true;
    }

    //Withdraw retirar valor del dinero
    function winthdraw(uint256 _amount)public onlyOwner {
        require(_amount <= address(this).balance, "Insufficient ether balance");
        payable(msg.sender).transfer(_amount);
    }


    //getRentDuration: ver la duracion del contrato
    function getRentDuration() public view returns (uint256) {
        return rentDurationYear / (365 days);
    }

    //Actualizar el tiempo del contrato
    function updateTime(uint256 _rentDurationYears)public onlyOwner {
        rentDurationYear = _rentDurationYears * (365 days);
    }
}