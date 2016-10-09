require_relative 'time'
require 'pry'

class Appointments

  attr_reader :slots

  def initialize
    @slots = []
  end
  
  def at(time)
    @slots << time
  end

  def earliest
   length = @slots.length

   return nil if length == 0
   return @slots[0] if length == 1

   (length-1).times do |num|
      compare = (@slots[num].date <=> @slots[num + 1].date)
      if compare == -1
        return @slots[num]
      end
    end
  end

end