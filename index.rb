require "./player"
#require "./coordinate"

# method
def insert_name
	puts "insert name"		
	print "name: "
	name= gets.chomp
	return name
end

#def read_number
def read_number(chosen1, chosen2)
	print "number: "
	num= gets.chomp.to_i
	#while !num.between?(1, 9) || $board.include?(num)
	while !num.between?(1, 9) || chosen1.include?(num) || chosen2.include?(num) 
		puts "choose the number between 1-9 and not used number!"
		puts "taken: "
		puts chosen1 + chosen2
 		#puts $board
		print "number: "
 		num= gets.chomp.to_i
 	end 
	return num
end

# check whether player wins or not
def check_winner(chosen)
	# 8 patterns to win
	if chosen & [1,2,3] == [1,2,3] || chosen & [4,5,6] == [4,5,6] || chosen & [7,8,9] == [7,8,9] || 
		chosen & [1,4,7] == [1,4,7] || chosen & [2,5,8] == [2,5,8] || chosen & [3,6,9] == [3,6,9] || 
		chosen & [1,5,9] == [1,5,9] || chosen & [3,5,7] == [3,5,7]
		return true
	end
	return false
end

# print the current result
def print_result(chosen1, chosen2, x_o1, x_o2)
	i=0
	while i <  5
		j=0
		while j < 5
				if i%2==0 && j%2 ==0#r:even ,c:even
					if  chosen1.include?(i/2*3+j/2+1)#exist in chosen array1
						print x_o1
					  # print O or X
					elsif chosen2.include?(i/2*3+j/2+1) #exist in chosen array1
						print x_o2
					else
					  print " "	
					end
				elsif i%2==0 && j%2 !=0#r:even, c:odd
					print "|"
			    elsif i%2!=0 && j%2 ==0#r:odd, c:even
			    	print "-"

			    else #r:odd, c:odd
					print " "	
				end
			j +=1
		end
		i +=1
		puts ""
	end

end



# read two players
name= insert_name
print "player1- x or o: "
x_o1= gets.chomp
while x_o1!='x' && x_o1!='o'
	puts "please insert either x or o"
	print "player1- x or o: "
	x_o1= gets.chomp
end
player1 = Player.new(name, x_o1)


name= insert_name
print "player2- x or o: "
x_o2= gets.chomp		
if x_o1=='x'
	while x_o2!='o' 
		puts "please insert o since x is taken by another player"
		print "player2- x or o: "
		x_o2= gets.chomp
	end
elsif x_o1=='o'
	while x_o2!='x'
		puts "please insert x since o is taken by another player"
		print "player2- x or o: "
		x_o2= gets.chomp
	end
end

player2 = Player.new(name, x_o2)

puts"=================check the insertion=========================="
puts "player1: "+ player1.name+ " "+ player1.x_o
puts "player2: "+ player2.name+ " "+ player2.x_o

puts "============================================================="
puts ""

# explanation of the way to choose the position
puts " 1|2|3"
puts " - - -"
puts " 4|5|6"
puts " - - -"
puts " 7|8|9"
puts "please choose the number as above"


# read the coordinates
# $ means global variable
#$board= []
i=0
while i!=5 
	puts "turn: #{player1.name}"
	num1= read_number(player1.chosen, player2.chosen)
	#$board.push(num1)
	# store the coordinates
	player1.chosen << num1.to_i
	if check_winner(player1.chosen)
		puts player1.name + " won!!!!"
		print_result(player1.chosen,player2.chosen,player1.x_o,player2.x_o)
 		break
 	end
	if i!=4
		puts "turn: #{player2.name}"
		num2= read_number(player1.chosen, player2.chosen)
		#$board.push(num2)
		# store the coordinates
		player2.chosen << num2.to_i
		if check_winner(player2.chosen)
			puts player2.name + " won!!!!"
			print_result(player1.chosen,player2.chosen,player1.x_o,player2.x_o)
	 		break
 		end
	end

	puts"=================check the insertion=========================="
	puts player1.name + ": (" + num1.to_s + ")"
	puts player2.name + ": (" + num2.to_s + ")"
	puts "============================================================="	
	
	i += 1
end


puts"=================check the registration======================="
puts player1.name + ": (" + player1.chosen.to_s + ")"
puts player2.name + ": (" + player2.chosen.to_s + ")"
puts "taken: "
puts player1.chosen.to_s + player2.chosen.to_s
#p $board
puts "============================================================="

puts ""


