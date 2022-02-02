require 'pp'
class TicTacToe
attr_accessor :board
  
    WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]
    ]

    def initialize
        @board= [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end

    def display_board
       puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
       puts "-----------"
       puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
       puts "-----------"
       puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(inp)
        return (inp.to_i - 1)
    end

    def move(input, token)
        @board[input] = "#{token}"
    end

    def position_taken?(index)
        if @board[index] != " "
            return true
        else
            return false
        end
    end

    def valid_move?(index)
        if (index <= 8) && (index >= 0) && (self.position_taken?(index) == false)
            return true
        else
            return false
        end
    end

    def current_player
        if self.turn_count % 2 == 0
            return "X"
        else
            return "O"
        end
    end

    def turn_count
        turn_count = 0
        @board.each do | index | 
            if index == "X" || index == "O" 
                turn_count += 1  
            end
        end
      return turn_count
    end

    def turn

    end

    def won?
        board_tally = Hash.new(" ", " ")
        board_arr_o = [" "]
        board_arr_x = [" "]
        board.each_with_index do |spot, i|
            if spot.position_taken? then    
                if spot == "X"
                    board_arr_x += i
                elsif spot == "O"
                    board_arr_o += 1
                end
            end
        end
    end
        # WIN_COMBINATIONS.each do |combo|
        #     if board_arr_o.includes?(combo) && board_arr_x.includes?(combo)
        #         return false
        #     elsif board_arr_x.includes?(combo)
        #         return combo
        #     elsif board_arr_o.includes?(combo)
        #         return combo
        #     else
        #         return false
        #     end
    #      end
    # end
        
        # WIN_COMBINATIONS.each do |combo|
        #     if board_arr_o.includes?(combo)
        #         if board_arr_x.includes?(combo)
        #             return self.draw?
        #         else
        #             return "O wins!"
        #     elsif board_arr_x.includes?(combo)
        #         if board_arr_o.includes?(combo)
        #             return self.draw?
        #         else
        #             return "X wins!"
        #     else
        #         return self.full?

    def full?
        
    end

    def draw?
    end

    def over?
    end
end