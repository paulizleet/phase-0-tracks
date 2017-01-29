/*

Method: Reverse
Input: string
Output: string
Description:	This method takes a string, and iterates through it backwards, 
				and building a new string with the letters at each index.




*/
function reverseString(str_to_reverse){

	var new_string = "";

	for (var i = str_to_reverse.length; i > 0; i--) {
		new_string += str_to_reverse[i-1];

	}
	return new_string;

}






var str_to_reverse = "Reverse me!";

console.log("Reversing: " + str_to_reverse);

var new_string = reverseString(str_to_reverse);

console.log(new_string);

console.log(true==false);

