require "./player"
require "./coordinate"

class 

	attr_accessor :name, :OorX, :chosen, 



	def initialize
		@name= name
		@OorX= OorX
		@chosen= chosen
		@reach= reach
	end


	def check_bingo
		
	end

	def store_in_array
		
	end

	def print
		$i= 0
		$j= 0
		num= 3
		while $i < num
			while $j < num
				if $i%2==0 && $j%2 ==0#r:even ,c:even
					if  #exist in chosen array
					  # print O or X
					else
					  print " "	
					end
				elsif $i%2==0 && $j%2 !=0#r:even, c:odd
					print "|"
			    elsif $i%2!=0 && $j%2 ==0#r:odd, c:even
			    	print "-"

			    else #r:odd, c:odd
					print " "	
				end
				

				$j +=1
			end
			$i +=1
		end
	end
end