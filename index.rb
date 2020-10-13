require "./player"
#require "./coordinate"

# read two players
puts "player1: insert name and x or o"
print "player1-name: "
name= gets.chomp
print "player1- x or o: "
x_o1= gets.chomp
while x_o1!='x' && x_o1!='o'
	puts "please insert either x or o"
	print "player1- x or o: "
	x_o1= gets.chomp
end
player1 = Player.new(name, x_o1)



puts "player2: insert name and x or o"
print "player2-name: "
name= gets.chomp
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

# explanation of the way to choose the position
puts " (0,0)|(0,1)|(0,2)"
puts "   -     -     -  "
puts " (1,0)|(1,1)|(1,2)"
puts "   -     -     -  "
puts " (2,0)|(2,1)|(2,2)"
puts "please insert the coordinate (x,y) as above"


# read the coordinates
puts "tern of #{player1.name}"
print "x: "
x1= gets.chomp.to_i
print "y: "
y1= gets.chomp.to_i

puts "tern of #{player2.name}"
print "x: "
x2= gets.chomp.to_i
print "y: "
y2= gets.chomp.to_i

puts"=================check the insertion=========================="
puts player1.name + ": ("+ x1.to_s + ", " + y1.to_s + ")"
puts player2.name + ": ("+ x2.to_s + ", " + y2.to_s + ")"





# check whether player wins or not

# store the coordinates

# print the current result
