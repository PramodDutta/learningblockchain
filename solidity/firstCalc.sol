pragma solidity ^0.4.16;

/**
 *  Author  : Promode
 * The AddNumber contract does add number to the current number...
 */
contract AddNumber {

	uint res;

	event NumberAdded(uint n);


	function AddNumber (uint number) returns  {
		res=number;
	}

	function getResult () constant returns(uint) {
		return res;
	}
	
	function addNumber (uint number) returns(uint) {
		res+=number;
		NumberAdded(number);
		return res;
	}
}

