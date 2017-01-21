class Santa
	attr_reader :gender, :ethnicity, :reindeer_team, :age
	attr_accessor :gender, :ethnicity

	def initialize(gender, ethnicity)
		puts "Initializing Santa..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_team = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(141)

	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie"
	end

	def get_mad_at(reindeer_name)
		team_index = @reindeer_team.index(reindeer_name)
		@reindeer_team.delete_at(team_index)
		@reindeer_team << reindeer_name
	end

	def celebrate_birthday
		puts "Happy birthday!"
		@age+=1
	end

end

santas = []

genders = ["agender","female","bigender","male","female","gender fluid", "N/A"]
ethnicities =["black","Latino","white","Japanese","prefer not to say","Mystical Creature (unicorn)","N/A" ]

rand(1000).times do 
	santas << Santa.new(genders.sample, ethnicities.sample)
end

santas.each do |santa|
	puts "#{santa.ethnicity} - #{santa.gender}"

	santa.get_mad_at(santa.reindeer_team.sample)
	p santa.reindeer_team
end

puts "We have #{santas.length} Santa Clauses"




