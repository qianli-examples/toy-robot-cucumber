require 'pry'

require_relative "robot.rb"
require_relative "robot_helper.rb"
PLACE_HINT = 'Place your robot in below order such as "2,3,north"
place x,y,face'
PLACE_PATTERN = (/\d \d [a-z]+/)

puts "Welcome to Toy Robot game.\n #{PLACE_HINT}"


cmd_input = ""
until exit_game?(cmd_input)
	cmd_input  = transform_command_input(gets)

	if cmd_input.include?("place")
		place_command = matched_pattern_string(PLACE_PATTERN, cmd_input)
	else
		puts PLACE_HINT
	end
	if place_command
		place_command_arr = place_command.split(" ")
		x,y,face = place_command_arr[0].to_i, place_command_arr[1].to_i, place_command_arr[2].to_s
		@robot = Robot.new
		@robot.place(x,y,face) && @robot.check_on_board
	end


end