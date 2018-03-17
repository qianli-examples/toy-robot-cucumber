Given("The board is a square table with {int} * {int} units") do |x, y|
	@robot = Robot.new
	@robot.board(x, y)
end

When(/^Place the robot (\d+) \* (\d+) \* (.+)$/) do |x, y, face|
	@robot ||= Robot.new
	@robot.place(x, y, face)
end

Then("The robot is on the board") do
  @robot.robot_onboard
end

Then("The robot is not on the board") do
  expect(@robot.check_on_board).to be_falsey
end

When("Move the robot") do
  @robot.move_without_falling
end

Then /^The robot status is (\d+) \* (\d+) \* (\w+)$/ do |x, y, face|
  expect(@robot.face).to eq(face)
  expect(@robot.x).to eq(x)
  expect(@robot.y).to eq(y)
end

Given /^The robot on the edge with (\d+) \* (\d+) \* (\w+)$/ do |x, y, face|
  @robot ||= Robot.new
  @robot.x = x
  @robot.y = y
  @robot.face = face
end