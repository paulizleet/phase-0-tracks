# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Makes the ruby script import another script or class from a directory.
require 'pry'
require_relative 'state_data'

class VirusPredictor

  # Method: initialize
  # Input: String for state, string for pop. density, and integer for population
  # Output: None
  # Description: Initialize a new instance of the VirusPredictor class
  #   taking into account the state to be tracked, and its population.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Method: virus_effects
  # Input: None
  # Output: Output of methods predicted_deaths and speed_of_spread
  # 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


  #the methods below are inaccessible to other programs.
  private

  # Method: predicted_deaths
  # Input: Instance attributes of the class itself.
  # Output: String 
  # Description: Run some figures for how lethal an infection will be
  def predicted_deaths
    # predicted deaths is solely based on population density

    coefficient = case @population_density
      when 200..15000 then 0.4
      when 150..199 then 0.3
      when 100..149 then 0.2
      when 50..99 then 0.1
      else 0.05
    end

    number_of_deaths = @population * coefficient
    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  # Method: speed_of_spread
  # Input: population_density and state instance attributes.
  # Output: String 
  # Description: Run some figures for how quickly an infection will spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.


    speed = case @population_density
      when 200..15000 then 0.5
      when 150..199 then 1.0
      when 100..149 then 1.5
      when 50..99 then 2.0
      else 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

states = Array.new
STATE_DATA.each {
  |state, pop|



  #binding.pry

  predictor = VirusPredictor.new(state, pop[:population_density], pop[:population])

  states << predictor.virus_effects

}



#=======================================================================
# Reflection Section



#What are the differences between the two different hash syntaxes shown in the state_data file?
#  The hash STATE_DATA pairs a string key to a value of another hash.  
#  It lets you use different keys for hashes which use the same keys

#What does require_relative do? How is it different from require?
# =>  require_relative makes ruby include a script from a specified directory.  If no path is given, 
# =>  it pulls from the current working directory.  Regular require makes ruby include modules from installed gems.


#What are some ways to iterate through a hash?
# => use an iterator method with a block
# => while arbitrary_int < hash.length

#When refactoring virus_effects, what stood out to you about the variables, if anything?
# => I noticed that both methods were pulling the class' own attributes as arguments.  
# => The methods have access to those attributes anyway, so pulling them is redundant.

#What concept did you most solidify in this challenge?
# => Hashes make more sense to me now.  I didn't think to use a hash key to identify another hash as a value. 
