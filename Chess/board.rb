require_relative "piece"
require_relative "null_piece"

class Board
    attr_accessor :board
    def initialize(piece)
        @sentinel = NullPiece.new
        @board = inti_board() #call the method init board 
    end

    #figure out how to fill the board with each color && place our non nullpiece in the beginning 
    def init_board()
        Array.new(8) {Array.new(8,@sentinel)} 
    end
    #need a method to  initialize the board with every correct piece 
    def [](pos)
        raise 'Invalid Position' unless valid_pos?(pos)
        @board[pos.first][pos.last]
    end

    def []=(pos, val)
        raise 'Invalid Position' unless valid_pos?(pos)
        @board[pos.first][pos.last] = val
    end

    def valid_pos?(pos)
        pos.all? { |coordinate| coordinate.between?(0,7) }
    end

    def move_piece(color, start_pos, end_pos)
        raise 'No Piece' unless empty?(start_pos)
        piece = self[start_pos]
        raise 'Not Your Piece!!' if piece.color != color
        
    end

    def move_piece!(color, start_pos, end_pos)
    end

    def empty?(pos)
        @board[pos].empty?
    end

    def add_piece(piece, pos)
        board[pos] = piece
    end

    def check_mate(color)
    end
    
    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
        @board.flatten.select{|ele| ele != NullPiece.instance}
    end

    def dup
        @board.dup
    end
    

end

