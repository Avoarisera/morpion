require_relative'Board_case' 

class Board
 
def initialize
  @a1 =Board_case.new
  @a2 = Board_case.new
  @a3 = Board_case.new
  @b1 = Board_case.new
  @b2 = Board_case.new
  @b3 = Board_case.new
  @c1 = Board_case.new
  @c2 = Board_case.new
  @c3 = Board_case.new
end
def kasy
  [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
  
end

 

def mandresy
  [[@a1, @a2, @a3],
  [@a1, @b2, @c3],
  [@a1, @b1, @c1],
  [@b1, @b2, @b3],
  [@c1, @c2, @c3],
  [@c1, @b2, @a3],
  [@a2, @b2, @c2],
  [@a3, @b3, @c3]]
  
end


def tableau
  puts
  puts "   1   2   3"
  puts"    .........."
  puts "a  #{@a1} |#{@a2} |#{@a3} " 
  puts "   --------"
  puts "b  #{@b1} |#{@b2} |#{@b3} "
  puts "   --------"
  puts "c  #{@c1} |#{@c2} |#{@c3} "
  puts "   ........."
  mpandresy
  
end
puts tableau
end
