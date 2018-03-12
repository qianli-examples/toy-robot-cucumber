# Given(/^I have (\d+) (\w+)$/) do |num, container|
Given(/^I have (\d)+$/) do |a|	
  puts "number"
end

Then(/^I eat (\w+)$/) do |a|
  puts "container"
end
# Given /^I have (\d+) (\w+)$/ do |num, book|
#   puts "good"
# end