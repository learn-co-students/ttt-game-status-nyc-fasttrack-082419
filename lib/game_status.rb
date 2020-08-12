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
  [2,4,6],
  [0,4,8],
]

def won?(board)
  WIN_COMBINATIONS.detect do |winning_combo|
    board[winning_combo[0]] == board[winning_combo[1]] &&
    board[winning_combo[1]] == board[winning_combo[2]] &&
    position_taken?(board, winning_combo[0])
  end
end

def full?(board)
  # Uses .all method to get a return boolean (true or false)
  board.all?{|t| t == "X" || t == "O"}
end

def draw?(board)
   # Use helper methods to pass
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end