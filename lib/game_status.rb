# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2],
  ]
  
  def won?(board)
    WIN_COMBINATIONS.detect do |combo| #detects looks for the                                     first condition that                                       passes
      position_taken?(board,combo[0]) && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
      
      # && operator puts conditions into series, if one condition fails, iteration stop and restart with the following element
      
      #.select will display all conditions that passes
      
    end
  end
  
  def full?(board)
    board.all?{|token| token == "X" || token == "O"}
  end
  
  def draw?(board)
    full?(board) && !won?(board)
  end
  
  def over?(board)
    won?(board) || full?(board)
  end 
  
  def winner(board)
    if winnning_combo = won?(board)
      board[winnning_combo.first]
    end
  end