require_relative 'game'

class Frame

  attr_reader :roll_1, :roll_2, :frames

  def initialize(roll_1, roll_2)
    @roll_1 = roll_1
    @roll_2 = roll_2
    @frames = []
  end

  def strike_spare_or_score?
    @frames << @roll_1
    @frames << @roll_2
    if @roll_1 == 10
    puts  "You got a strike!"
    elsif @roll_1 + @roll_2 == 10
      puts "You got a spare!"
      @frames << "0"
    @frames << "10"
    else
    puts_finished_frame
  end
end

  def puts_finished_frame
    puts "You scored #{@frames[0]+ @frames[1]} this frame"
  end

def print_scorecard
  puts @frames
end
end
