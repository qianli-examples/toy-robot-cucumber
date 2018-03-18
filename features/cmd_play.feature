Feature: User play the Toy robot game through command line

Scenario: The random command input can be formatted
When User input 'I "Machal" want to place 1 & 2 ^%$ north'
Then The command is formatted into 'i machal want to place 1 2 north'

