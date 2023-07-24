require "./Game.rb"
require "./Player.rb"


player_one = Player.new("John")
player_two = Player.new("Sally")

new_game = Game.new(player_one, player_two)

new_game.run_game()