class Carpenter
  
  attr_accessor :pieces
  
  def make_shelf length
    @pieces.sort!.reverse!
    remaining = length
    shelf_pieces = []

    @pieces.length.times do |i|
      break if remaining <= 0
      
      piece = [ remaining, @pieces[i] ].min
      shelf_pieces << piece
      
      @pieces[i] -= remaining
      remaining  -= piece
    end
    
    @pieces.delete_if { |piece| piece <= 0 }.sort!.reverse!

    shelf_pieces
  end
  
end