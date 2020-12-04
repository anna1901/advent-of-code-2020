password_list = File.readlines("input.txt").map do |line|
	[line[/\d+-\d+/], line[/[a-z]:/][0], line[/[a-z]+$/]]
end

valid_passwords = 0

password_list.each do |password|
	min = password[0][/\d+/].to_i
	max = password[0][/\d+$/].to_i
	count = password[2].count(password[1])
	if count >= min && count <= max
		valid_passwords +=1
	end
end

puts valid_passwords

# puts input.inspect