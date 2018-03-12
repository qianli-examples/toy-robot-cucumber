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

When("Move the robot") do
  @robot.move
end

Then /^The robot status is (\d+) \* (\d+) \* (\w+)$/ do |x, y, face|
  binding.pry
  expect(@robot.face).to eq(face)
  expect(@robot.x).to eq(x)
  expect(@robot.y).to eq(y)
end