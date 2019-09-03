pragma solidity >=0.4.22 <0.6.0;
//import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./SimpleBank.sol";

contract test3 {
   
    SimpleBank contractToTest;
    function beforeAll () public {
       contractToTest = new SimpleBank();
    }
    
    function testEnrolled() public 
    {
        require(contractToTest.enrolled(msg.sender) == false, "This account should not be enrolled yet.");
    }
    
    function testOwner () public view returns (bool) {
        return contractToTest.owner() == address(0);
    }
}
