require 'pry'
require_relative "boardcase"
class Board < BoardCase
  attr_accessor :board

def initialize
  @board = []
  for x in "A".."C"
    for y in "1".."3"
    @board << BoardCase.new("#{x+y}", " ") 
    end
  end
end

def play_turn (symbol)
puts "Quelle position souhaites tu joueur ?"
position = gets.chomp
@board.each do |x|
  x.content = symbol if x.position == position
end

def victory?

    if @board[0].content == "X" and @board[1].content == "X" and @board[2]== "X"
    elsif @board[3].content == "X" and @board[4].content == "X" and @board[5]== "X"
    elsif @board[6].content == "X" and @board[7].content == "X" and @board[8]== "X"
    elsif @board[0].content == "X" and @board[3].content == "X" and @board[6]== "X"
    elsif @board[1].content == "X" and @board[4].content == "X" and @board[7]== "X"
    elsif @board[2].content == "X" and @board[5].content == "X" and @board[8]== "X"
    elsif @board[0].content == "X" and @board[4].content == "X" and @board[8]== "X"
    elsif @board[2].content == "X" and @board[4].content == "X" and @board[6]== "X"
    elsif @board[0].content == "O" and @board[1].content == "O" and @board[2]== "O"
    elsif @board[3].content == "O" and @board[4].content == "O" and @board[5]== "O"
    elsif @board[6].content == "O" and @board[7].content == "O" and @board[8]== "O"
    elsif @board[0].content == "O" and @board[3].content == "O" and @board[6]== "O"
    elsif @board[1].content == "O" and @board[4].content == "O" and @board[7]== "O"
    elsif @board[2].content == "O" and @board[5].content == "O" and @board[8]== "O"
    elsif @board[0].content == "O" and @board[4].content == "O" and @board[8]== "O"
    elsif @board[2].content == "O" and @board[4].content == "O" and @board[6]== "O"
    else return false
    end
end
end
end

puts board = Board.new
board.play_turn("X")
puts board.board.inspect