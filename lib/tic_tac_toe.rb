class TicTacToe
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

  def initialize
    @board = Array.new(9, " ")
  end

  def board
    @board
  end

  def display_board
    puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
    puts "-----------"
    puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
    puts "-----------"
    puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
  end

  def input_to_index(input)
    user_input = input.to_i
    index = user_input - 1
    return index
  end

  def move(index, character)
    board[index] = character
    return board
  end

  def position_taken?(index)
    (board[index] == " ") || (board[index] == "") || (board[index] == nil)? false : true
  end

  def valid_move?(index)
    (board[index] == " ") && index.between?(0, 8) && !position_taken?(index)? true : false
  end

  def turn_count(board)
    board.count{|token| token == "X" || token == "O"}
  end

  def current_player
    turn_count(board) % 2 == 0 ? "X" : "O"
  end

end
