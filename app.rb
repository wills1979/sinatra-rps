require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:home)

end

get("/rock") do

  moves = ["rock", "paper", "scissors"]  

  @our_move = "rock"

  @computer_move = moves.sample
  
  if @computer_move == @our_move
    @result = "tied"
  elsif @computer_move == "paper"
    @result = "lost"
  else
    @result = "won"
  end

  erb(:move)

end

get("/paper") do

  moves = ["rock", "paper", "scissors"]  

  @our_move = "paper"

  @computer_move = moves.sample
  
  if @computer_move == @our_move
    @result = "tied"
  elsif @computer_move == "scissors"
    @result = "lost"
  else
    @result = "won"
  end

  erb(:move)

end

get("/scissors") do

  moves = ["rock", "paper", "scissors"]  

  @our_move = "scissors"

  @computer_move = moves.sample
  
  if @computer_move == @our_move
    @result = "tied"
  elsif @computer_move == "rock"
    @result = "lost"
  else
    @result = "won"
  end

  erb(:move)

end
