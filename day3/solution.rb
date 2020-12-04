INPUT = File.readlines("input.txt").map(&:chomp)

def check_num_trees(x, y)
	column = 0
	trees = 0
	for i in (x...INPUT.size).step(x) do
		column+=y
		trees += 1 if INPUT[i][column%INPUT[0].size] == "#"
	end
	trees
end

# Part 1

puts check_num_trees(1, 3)


# Part 2

puts check_num_trees(1, 1)*check_num_trees(1, 3)*check_num_trees(1, 5)*check_num_trees(1, 7)*check_num_trees(2, 1)


