# Excercise 5

You are the judge at a competitive eating competition and you need to choose a winner!

There are three foods at the competition and each type of food is worth a different amount of points. Points are as follows:

- Chickenwings: 5 points

- Hamburgers: 3 points

- Hotdogs: 2 points

Write a scoreboard class that helps traking point of players. 

## Requirements:

- It should take as a initializer a list of player names
- It should have a `score(player_name, food)` method that increases the points of the given player
- It should have a `print_score` method that prints out the total score for each player
- It should have a `finish_game` method that prints out the final results and the winner, after calling this method the score should not be able change when score is called
- Creates a Separate class to Represents Food as constants and use them to track the score
  
```ruby
scoreboard = Scoreboard.new( "Habanero Hillary", "Big Bob", "Bob Marley", "Luis Miguel")
scoreboard.score("Habanero Hillary", Food.CHICKENWINGS)
scoreboard.score("Habanero Hillary", Food.CHICKENWINGS)
scoreboard.score("Big Bob", Food.HAMBURGERS)
scoreboard.score("Bob Marley", Food.HOTDOGS)
scoreboard.score("Luis Miguel", Food.HOTDOGS)
scoreboard.print_score # => {"Habanero Hillary": 10, "Big Bob": 3, "Bob Marley": 2, "Luis Miguel": 2}
scoreboard.finish_game
# => {"Habanero Hillary": 10, "Big Bob": 3, "Bob Marley": 2, "Luis Miguel": 2}
# => The winner is "Habanero Hillary"
scoreboard.score("Luis Miguel", Food.HOTDOGS) # Throws Exception
```