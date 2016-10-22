class GameController < ApplicationController

  def user_plays_rock

# Specific to the user's play.
    @user_move = "rock"
    @active_rock = "active"
    @active_paper = ""
    @active_scissors = ""

# Common to all user's plays.
    @user_image = "/assets/images/" + @user_move + ".png"

    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample
    @computer_image = "/assets/images/" + @computer_move + ".png"

    if @user_move == "rock" && @computer_move == "rock"
      @game_result = "tie"
      @game_result_text = "You tied!"
    elsif @user_move == "rock" && @computer_move =="scissors"
      @game_result = "win"
      @game_result_text = "You win!"
    elsif @user_move == "rock" && @computer_move =="paper"
      @game_result = "lose"
      @game_result_text = "You lost!"
    elsif @user_move == "scissors" && @computer_move =="scissors"
      @game_result = "tie"
      @game_result_text = "You tied!"
    elsif @user_move == "scissors" && @computer_move =="paper"
      @game_result = "win"
      @game_result_text = "You win!"
    elsif @user_move == "scissors" && @computer_move =="rock"
      @game_result = "lose"
      @game_result_text = "You lost!"
    elsif @user_move == "paper" && @computer_move =="paper"
      @game_result = "tie"
      @game_result_text = "You tied!"
    elsif @user_move == "paper" && @computer_move =="rock"
      @game_result = "win"
      @game_result_text = "You win!"
    elsif @user_move == "paper" && @computer_move =="scissors"
      @game_result = "lose"
      @game_result_text = "You lost!"
    end

    if @game_result == "lose"
      @game_result_text = "You lost!"
    elsif @game_result == "win"
      @game_result_text = "You win!"
    elsif @game_result == "tie"
      @game_result_text = "We tied!"
    end

    @game_result_image = "/assets/images/" + @game_result + ".png"

    render("game/play.html.erb")

  end

  def user_plays_paper

    # Specific to the user's play.
        @user_move = "paper"
        @active_rock = ""
        @active_paper = "active"
        @active_scissors = ""

    # Common to all user's plays.
        @user_image = "/assets/images/" + @user_move + ".png"

        moves = ["rock", "paper", "scissors"]
        @computer_move = moves.sample
        @computer_image = "/assets/images/" + @computer_move + ".png"

        if @user_move == "rock" && @computer_move == "rock"
          @game_result = "tie"
          @game_result_text = "You tied!"
        elsif @user_move == "rock" && @computer_move =="scissors"
          @game_result = "win"
          @game_result_text = "You win!"
        elsif @user_move == "rock" && @computer_move =="paper"
          @game_result = "lose"
          @game_result_text = "You lost!"
        elsif @user_move == "scissors" && @computer_move =="scissors"
          @game_result = "tie"
          @game_result_text = "You tied!"
        elsif @user_move == "scissors" && @computer_move =="paper"
          @game_result = "win"
          @game_result_text = "You win!"
        elsif @user_move == "scissors" && @computer_move =="rock"
          @game_result = "lose"
          @game_result_text = "You lost!"
        elsif @user_move == "paper" && @computer_move =="paper"
          @game_result = "tie"
          @game_result_text = "You tied!"
        elsif @user_move == "paper" && @computer_move =="rock"
          @game_result = "win"
          @game_result_text = "You win!"
        elsif @user_move == "paper" && @computer_move =="scissors"
          @game_result = "lose"
          @game_result_text = "You lost!"
        end

        if @game_result == "lose"
          @game_result_text = "You lost!"
        elsif @game_result == "win"
          @game_result_text = "You win!"
        elsif @game_result == "tie"
          @game_result_text = "We tied!"
        end

        @game_result_image = "/assets/images/" + @game_result + ".png"

        render("game/play.html.erb")

      end

  def user_plays_scissors
    # Specific to the user's play.
        @user_move = "scissors"
        @active_rock = ""
        @active_paper = ""
        @active_scissors = "active"

    # Common to all user's plays.
        @user_image = "/assets/images/" + @user_move + ".png"

        moves = ["rock", "paper", "scissors"]
        @computer_move = moves.sample
        @computer_image = "/assets/images/" + @computer_move + ".png"

        if @user_move == "rock" && @computer_move == "rock"
          @game_result = "tie"
          @game_result_text = "You tied!"
        elsif @user_move == "rock" && @computer_move =="scissors"
          @game_result = "win"
          @game_result_text = "You win!"
        elsif @user_move == "rock" && @computer_move =="paper"
          @game_result = "lose"
          @game_result_text = "You lost!"
        elsif @user_move == "scissors" && @computer_move =="scissors"
          @game_result = "tie"
          @game_result_text = "You tied!"
        elsif @user_move == "scissors" && @computer_move =="paper"
          @game_result = "win"
          @game_result_text = "You win!"
        elsif @user_move == "scissors" && @computer_move =="rock"
          @game_result = "lose"
          @game_result_text = "You lost!"
        elsif @user_move == "paper" && @computer_move =="paper"
          @game_result = "tie"
          @game_result_text = "You tied!"
        elsif @user_move == "paper" && @computer_move =="rock"
          @game_result = "win"
          @game_result_text = "You win!"
        elsif @user_move == "paper" && @computer_move =="scissors"
          @game_result = "lose"
          @game_result_text = "You lost!"
        end

        if @game_result == "lose"
          @game_result_text = "You lost!"
        elsif @game_result == "win"
          @game_result_text = "You win!"
        elsif @game_result == "tie"
          @game_result_text = "We tied!"
        end

        @game_result_image = "/assets/images/" + @game_result + ".png"

        render("game/play.html.erb")

      end

end
