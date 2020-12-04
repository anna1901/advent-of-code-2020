password_list = File.readlines("input.txt").map do |line|
	[line[/\d+-\d+/], line[/[a-z]:/][0], line[/[a-z]+$/]]
end

valid_passwords = 0

# Part 1

password_list.each do |password|
	min = password[0][/\d+/].to_i
	max = password[0][/\d+$/].to_i
	count = password[2].count(password[1])
	if count >= min && count <= max
		valid_passwords +=1
	end
end

# Part 2

valid_passwords = 0

password_list.each do |password|
	first_position = password[0][/\d+/].to_i
	second_position = password[0][/\d+$/].to_i
	
	num = 0

	num +=1 if password[2][first_position-1] == password[1]
	num +=1 if password[2][second_position-1] == password[1]

	valid_passwords +=1 if num == 1
end

puts valid_passwords
