class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(barks)
  	barks.times do
  		puts "Woof!"
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(years)
  	return years * 7
  end

  def go_around
  	puts "*runs around the table*"
  end

end

fido = Puppy.new

fido.fetch("ball")
fido.speak(5)
fido.roll_over
puts "Doggy is #{fido.dog_years(3)} dog years old!"
fido.go_around


class StreetRacer

	def initialize
		puts "*turns key* VROOM VROOM"
		@speed = 0
	end

	def accelerate(spd)
		@speed += spd
		puts "He's going #{@speed} mph!"
	end

	def decelerate(spd)
		@speed -= spd
		puts "He slowed down for the corner to #{@speed} mph!"
	end

	def drift
		surprise = ['Masaka!!', 'NANI?!?!']
		puts "#{surprise[rand(2)]}  He drifted that corner at #{@speed} mph!"
	end

end

racers = Array.new

50.times do
	racers << StreetRacer.new
end

racers.each do |racer|

	racer.accelerate(100)
	racer.decelerate(rand(99)+1)
	racer.drift

end

