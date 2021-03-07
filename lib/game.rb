require_relative 'frame'

class Game

attr_reader :frames

def initialize(frames = [])
  @frames = []
end

def new_frame(roll_1, roll_2)
  @frames << frame(roll_1, roll_2)
end

def shows_frames
  p @frames
end

def strike_or_spare?
  if @frames[0.sum] == 10
  puts "spare!"
else puts "not spare!"
end
end
end
