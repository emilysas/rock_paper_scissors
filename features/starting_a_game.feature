Feature: Starting a Game
	In order to play rock, paper, scissors
	As a bored marketer
	I want to start a game

	Scenario: New Game
		Given I am on the homepage
		Then I should see "Please enter your name"

	Scenario: Getting a Choice
		Given I am on the homepage
		When I fill in "name" with "Emily"
		And I press "Submit"
		Then I should see "Hi Emily, would you like to choose Rock, Paper or Scissors?"

	Scenario: Making a Choice
		Given I am on new_game
		When I choose "Rock"
		And I press "Play!"
		Then I should see "Rock beats Paper, you win!"
