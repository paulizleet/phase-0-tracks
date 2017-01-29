	/*

Method: longest
Description:  Iterate through an array of strings, and return the string with the most characters.
Input: Array
Output: String

*/


function longest(array_of_phrases){


	longest_phrase = "";
	for (var i = 0; i < array_of_phrases.length; i++)
	{
		if (array_of_phrases[i].length > longest_phrase.length){
			longest_phrase = array_of_phrases[i];
		}
	}
	return longest_phrase;
}



/*
Method: Sharing
Description: Take two objects, and check to see if they share any property values between them.
Input: object, object
Output: Boolean
*/

//I thought this one was vague and I felt I had to google just enough to find out how 
//to iterate through an object's properties

function sharing(obj1, obj2){

	for (var prop in obj1){

		if ( prop in obj2 ){

			if (obj1[prop] == obj2[prop]){
				console.log("These objects share the key-value pair: " + prop + " : " + obj1[prop])
				return true;

			}
		}
	}

	return false;


}



/*
Input an integer

Until we have the required number of strings:

	Until we've done this ten times:

		Choose a random number between 0 and 25, corresponding to a letter in the alphabet
		Append that letter onto our string

	append the created string onto our array

return our array of nonsense.

*/
function get_strings(len){

	var strings  = [];
	var letters = 'abcdefghijklmnopqrstuvwxyz';	


	//console.log(Math.getRandomInt(0,25))
	for (var i = 0; i < len; i++){
		var string_to_add = "";
		for(var j = 0; j < Math.floor(Math.random() * 10)+1; j++){

			string_to_add += letters[Math.floor(Math.random() * 25)];
		}

		strings.push(string_to_add);
	}

	return strings;

}





var phrases = ["long phrase","longest phrase","longer phrase"];
console.log(longest(phrases));


console.log(sharing({name: "Steven", age: 54}, {name: "Tamir", age: 54}))


var longest_strings = []
for (var i = 0; i < 10; i++)
{

	var words = get_strings(Math.floor(Math.random() * 10)+1);

	longest_strings.push(longest(words))

}

console.log(longest(longest_strings))