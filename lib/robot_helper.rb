def direction_input_transformer(face_direction)
	face_direction.to_s.downcase.chars.first
end

class OffTheBoardException < StandardError
	def initialize(warning_message)
		super(warning_message)
	end
end

def transform_command_input(cmd_input)
	cmd_input.strip.downcase.gsub(/\W/, " ").squeeze
end

def exit_game?(formatted_cmd_input = "")
	formatted_cmd_input.include?("exit") || formatted_cmd_input.include?("quit")
end

def matched_pattern_string(pattern, original)
	pattern.match(original).to_s
end