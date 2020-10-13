class 

	attr_accessor :name, :OorX, :chosen, 



	def initialize
		@name= name
		@OorX= OorX
		@chosen= chosen
	end

	def check_bingo
		
	end

	def store_in_array
		
	end

	def print
		$i= 0
		$j= 0
		num= 3
		while $i < $num
			while $j < $num
				if #r:even ,c:even
					if  #exist in chosen array
						
					else
					  print " "	
					end
				elsif #r:even, c:odd
					
			    elsif #r:odd, c:even

			    else
							
					
				end
				

				$j +=1
			end
			$i +=1
		end
	end
end