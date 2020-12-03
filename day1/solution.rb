require 'set'

# file = File.open("input.txt")
file_data = File.readlines("input.txt").map(&:to_i)
# file.close

numbers = file_data.to_set

# Part 1

numbers.each do |x|
	y = 2020 - x

	if numbers.include?(y)
		puts y * x
		break
	end
end

# Part 2

for i in 0...file_data.size
	for j in i+1...file_data.size
		for k in j+1...file_data.size
			if file_data[i] + file_data[j] + file_data[k] == 2020
				puts file_data[i] * file_data[j] * file_data[k]
				break
			end
		end
	end
	i+=1
end

