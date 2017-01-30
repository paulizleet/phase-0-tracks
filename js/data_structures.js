var colors = ['Red', 'Blue', 'Pink', 'Green'];
var horse_names= ['Seabiscuit', 'Hoof-Hearted', 'Charlie', 'Paco'];

colors.push('Orange');
horse_names.push('Jeff');

console.log(colors)
console.log(horse_names)



function Car(make, model, color, trim){
	this.make = make;
	this.model = model;
	this.color = color;
	this.trim = trim;

	this.rev_engine = function(){

		if (this.model == "RX-7"){
			console.log("BRAP BRAAAAPP");
		}
		else
		{
			console.log("VROOM VROOOOOOOM");
		}
	};
}

var trueno = new Car("Toyota", "Corolla", "Panda", "Trueno");
trueno.rev_engine();

var fd_rx7 = new Car("Mazda", "RX-7", "Yellow", "FD")
fd_rx7.rev_engine();


