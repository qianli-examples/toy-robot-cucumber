class Robot
	attr_writer :x, :y, :boardx, :boardy
	attr_accessor :face 

	def board(boardx = 5, boardy = 5)
		[boardx, boardy]
	end

	def robot_onboard
		not @x.nil?
	end

	def place(x, y, face)
		@x = x
		@y = y
		@face_direction = face.to_s.downcase.chars.first
	end

	def move
		case @face_direction
		when 'n'
			@y += 1
		when 'e'
			@x += 1
		when 's'
			@y -= 1
		when 'w'
			@x -= 1
		end
	end
end