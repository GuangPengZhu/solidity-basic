// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract EnumDemo {
    enum Status {
        Pending, //-0
        Shipped, //-1
        Accepted, //-2
        Rejected, //-3
        Canceled //-4
    }
    // get default value 0
    Status public status;

    function get() public view returns (Status) {
        return status; //will be 0
    }

    // update status value need int value to passed _status = int
    function set(Status _status) public {
        status = _status;
    }

    function changeToCanceled() public {
        status = Status.Canceled;
    }

    // use delete keyword means to reset the value to 0
    function reset() public {
        delete status;
    }
}
