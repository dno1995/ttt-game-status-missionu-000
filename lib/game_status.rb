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
  [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && board[win_combination[0]] != ' '
  end
end

def full?(board)
  board.none?{|spot| spot == " "}
end

def draw?(board)
  won?(board).nil? && full?(board) == true
end

def over?(board)
  !won?(board).nil? || draw?(board) == true
end

def winner(board)
  if won?(board).nil?
    won?(board)
  else
    board[won?(board)[0]]
  end
end
