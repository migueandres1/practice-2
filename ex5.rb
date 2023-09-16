class Scoreboard
  
  attr_reader :players_scores, :game_finished

  def initialize(*player_names)
    @players_scores = {}
    player_names.each { |name| @players_scores[name] = 0 }
    @game_finished = false
  end

  def score(player_name, food)
    raise "Game is already finished" if @game_finished

    @players_scores[player_name] += food
  end

  def print_score
    puts @players_scores
  end

  def finish_game
    @game_finished = true
    print_score
    winner = @players_scores.max_by { |_player, score| score }[0]
    puts "The winner is #{winner}"
  end
end

class Food
  CHICKENWINGS = 5
  HAMBURGERS = 3
  HOTDOGS = 2
end

scoreboard = Scoreboard.new( "Habanero Hillary", "Big Bob", "Bob Marley", "Luis Miguel")
scoreboard.score("Habanero Hillary", Food::CHICKENWINGS)
scoreboard.score("Habanero Hillary", Food::CHICKENWINGS)
scoreboard.score("Big Bob", Food::HAMBURGERS)
scoreboard.score("Bob Marley", Food::HOTDOGS)
scoreboard.score("Luis Miguel", Food::HOTDOGS)
scoreboard.print_score # => {"Habanero Hillary": 10, "Big Bob": 3, "Bob Marley": 2, "Luis Miguel": 2}
scoreboard.finish_game
# => {"Habanero Hillary": 10, "Big Bob": 3, "Bob Marley": 2, "Luis Miguel": 2}
# => The winner is "Habanero Hillary"
scoreboard.score("Luis Miguel", Food::HOTDOGS) # Throws Exception

