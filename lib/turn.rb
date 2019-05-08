def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.chomp
  user_input = input.to_i
  if user_input >= 1 && user_input <= 9
    index = input_to_index(user_input)
    move(board, index)
  else
    turn(board)
  end

end

def input_to_index (user_input)
  user_input.to_i - 1
end
