def direction_input_transformer(face_direction)
	face_direction.to_s.downcase.chars.first
end

class OffTheBoardException < StandardError
	def initialize(warning_message)
		super(warning_message)
	end
end

def transform_command_input(cmd_input = "")
	if cmd_input.empty?
		cmd_input
	else
		cmd_input.strip.downcase.gsub(/[,.;':"!@#$%^&*`~'-]/, " ").squeeze
	end
end

def exit_game?
	transform_command_input(gets).include?("exit" || "quit")
end