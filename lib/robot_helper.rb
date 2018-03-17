def direction_input_transformer(face_direction)
	face_direction.to_s.downcase.chars.first
end

class OffTheBoardException < StandardError
	def initialize(warning_message)
		super(warning_message)
	end
end