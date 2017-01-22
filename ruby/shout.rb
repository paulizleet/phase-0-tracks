require 'SecureRandom'

module Shout


	#def self.yell_angrily(words)
	#	words + "!!!" + " :("
	#end

	#def self.yell_happily(words)
	#	words + "!!!" + " :--DDDDDDDDD"
	#end/

	def self.yell(words)
		words.upcase + "!!!"
	end

end


class DrillSergeant
	include Shout
end

class SurpriseParty
	include Shout
end

sarge = DrillSergeant.new
sarge.yell("drop and give me #{rand(50)}")

party = SurprisePary.new
rand(20).times do 
	party.yell("surprise")	
end