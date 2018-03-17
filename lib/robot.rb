class Robot
	attr_accessor :face, :x, :y, :boardx, :boardy

	def board(boardx = 5, boardy = 5)
		@boardx = boardx
		@boardy = boardy
		[boardx, boardy]
	end

	def check_on_board
	  if @x > 5 || @x < 0 || @y > 5 || @y < 0
	    begin
	      raise OffTheBoardException.new("Robot Crash! Put back on board!")
	    rescue OffTheBoardException => e
	      puts e.message
	      puts board_boundary_info
	      false
	    else
	    	true
	    end
	  end
	end

	def board_boundary_info
		"The board is #{boardx.to_s} and #{boardy.to_s}"
	end

	def robot_onboard
		not @x.nil?
	end

	def place(x, y, face)
		@x = x
		@y = y
		@face = face
	end

	def move
		case direction_input_transformer(@face)
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

	def move_without_falling
		if falling_free?
			self.move
		end
	end

	def falling_free?
		x_before_move = @x
		y_before_move = @y
		self.move
	  if @x > 5 || @x < 0 || @y > 5 || @y < 0
	    begin
	      raise OffTheBoardException.new("Cliff, halt!")
	    rescue OffTheBoardException => e
	      puts e.message
		    @x = x_before_move
		    @y = y_before_move
	      return false
	    end
	  else
	    @x = x_before_move
	    @y = y_before_move
	    return true
	  end
	end
end























