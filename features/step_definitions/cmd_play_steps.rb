When("User input {string}") do |cmd_input|
  @formatted_user_input = transform_command_input(cmd_input)
end

Then("The command is formatted into {string}") do |input_format|
  expect(@formatted_user_input).to eq(input_format)
end