require "./player"
#require "./coordinate"

# read two players
puts "player1: insert name and x or o"
print "player1-name: "
name= gets.chomp
puts ""
print "player1- x or o: "
x_o= gets.chomp
puts ""
player1 = Player.new(name, x_o)

puts"check the insertion"
puts "name: "+ player1.name
puts "x or o: "+ player1.x_o



# read the coordinates

# check whether player wins or not

# store the coordinates

# print the current result
