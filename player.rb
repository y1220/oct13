class WrongXorO < StandardError
end

class Player

	#attr_accessor :name, :OorX, :chosen, :reach
	attr_accessor :name, :x_o, :chosen, :reach


	#NO CAPITAL LETTER FOR VARIABLES
	def initialize(name, x_o)
		@name= name
		@x_o= x_o
		@chosen= Array.new
		#@reach= reach
	end


    # check if the selected coordinates are inside of reach 
	def check_bingo
		
	end

    # create the array of coordinates (x, y)
	def store_in_array(coordinate)
		chosen.push(coordinate)
	end

	
end