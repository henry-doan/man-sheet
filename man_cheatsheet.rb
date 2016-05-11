@cheat_sheet = []

def menu
	puts "CheatSheet"
	puts "1) Command line"
	puts "2) Search"
	puts "3) Exit"
	user_input = gets.strip
	exit(0) if user_input == '3'
	user_input.to_i
end

def command_line
	puts "1: mv"
	puts "2: cp"
	puts "3: mkdir"
	puts "4: ls"
	puts "5: rm"
	puts "6: To Exit"
	puts "7: Menu"
	#another method to break up and creat another methods
# 	info
# end

# def info
# 	user_input = gets.strip
# gets . chomp "1     "  gets.strip "      1    "
	exit(0) if user_input == '6'
	if user_input == '7'
		menu
	end
	if user_input == '1'
		puts `man mv`
	end
	if user_input == '2'
		puts `man cp`
	end
	if user_input == '3'
		puts `man mkdir`
	end
	if user_input == '4'
		puts `man ls`
	end
	if user_input == '5'
		puts `man rm`
	end
	user_input.to_i
end

def search
	puts "What would you like to search for?"
	user_input = gets.strip
	user_input.to_i
		puts `man #{user_input}`
end

# Not jumping back up but a place holder
while true
  case menu
    when 1
    	command_line
    when 2
      	search
    else
      puts "Try again"
      menu
  end
end