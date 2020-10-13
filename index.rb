require "./player"

# method
def insert_name
	puts "insert name"		
	print "name: "
	name= gets.chomp
	return name
end

#def read_number(board)
def read_number
	print "number: "
	num= gets.chomp.to_i
	while !num.between?(1, 9) || $board.include?(num)
		puts "choose the number between 1-9 and not used number!"
		print "taken: "
 		puts $board
		print "number: "
 		num= gets.chomp.to_i
 	end 
	return num
end

def check_duplicate

end


#require "./coordinate"

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
$board= []
puts "turn: #{player1.name}"
#num1= read_number(board)
num1= read_number
$board.push(num1)
puts "turn: #{player2.name}"
#num2= read_number(board)
num2= read_number
$board.push(num2)



puts"=================check the insertion=========================="
puts player1.name + ": (" + num1.to_s + ")"
puts player2.name + ": (" + num2.to_s + ")"
puts "============================================================="


player1.chosen << num1.to_i
player2.chosen << num2.to_i

puts"=================check the registration======================="
puts player1.name + ": (" + player1.chosen.to_s + ")"
puts player2.name + ": (" + player2.chosen.to_s + ")"
puts "============================================================="


p player1.chosen
p player2.chosen




# check whether player wins or not

# store the coordinates

# print the current result
