
pragma solidity >=0.4.22 <0.6.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./SimpleBank.sol";

contract test3 {
   
    SimpleBank contractToTest;
    function beforeAll () public {
       contractToTest = new SimpleBank();
    }
    
    function testEnrolled () public returns(bool){
        Assert.equal(contractToTest.enrolled(address(0)), uint(0), "it should be 0");
    }
    
    function testOwner () public view returns (bool) {
        return contractToTest.owner() == msg.sender;
    }
}
