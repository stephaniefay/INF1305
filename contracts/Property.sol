pragma solidity ^0.5.0;

contract Property {
	
	//Model
	struct PropertyStruct {
		uint id;
		string name;
		uint value_paid;
	}

	//Store
	//Fetch
	mapping(uint => PropertyStruct) public properties;

	//Store value paid
	uint public propertiesCount;

	constructor () public {
		addProperty("Imóvel 1");
		addProperty("Imóvel 2");
	}

	function addProperty (string memory _name) private {
		propertiesCount ++;
		properties[propertiesCount] = PropertyStruct(propertiesCount, _name, 0);
	}
}