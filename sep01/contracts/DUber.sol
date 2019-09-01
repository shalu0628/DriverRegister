pragma solidity ^0.5.0;

contract DeUber{
    

struct Driver{
    //address driverAddr;
    uint driver_Id;
    string Dname;
    bool set;
    uint bids; //price per km
}

mapping(address => Driver) public drivers;

function registerDriver(address _driverAddr, uint _driverId, string memory _driverName, uint _bids) public {
    Driver storage driver = drivers[_driverAddr];
    //Already registered or not!
    require(!driver.set);
    //store rider data record
    drivers[_driverAddr] = Driver({
        driver_Id: _driverId,
        Dname: _driverName,
        bids: _bids,
        set: true
    });
}
}