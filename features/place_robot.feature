Feature: User play the game Toy Robot
	User place the robot on the board and command the robot.
	Robot report the position as demanded. The status is current 'x, y, face' of robot.

	Scenario:	Place the robot on the board
	Given The board is a square table with 5 * 5 units
	When Place the robot 2 * 3 * 'east'
	Then The robot is on the board

	Scenario:	Place the robot out of the board
	Given The board is a square table with 5 * 5 units
	When Place the robot 6 * 3 * 'east'
	Then The robot is not on the board

	Scenario Outline: Move the robot
	Given Place the robot 2 * 3 * <face>
	When Move the robot
	Then The robot status is <status>

	Examples:
		| status 				| face 		|
		| 2 * 4 * north | north |
		| 3 * 3 * east	| east  |
		| 2 * 4 * south | south |
		| 3 * 3 * west	| west  |