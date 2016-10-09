require_relative 'candy'

class Bag

  attr_reader :candies
  
  def initialize
    @candies = []
  end

  def empty?
    if @candies.length == 0
      return true
    else
      return false
    end
  end

  def count
    @candies.length
  end

  def <<(candy)
    @candies << candy
    @candies
  end

  def contains?(name)
    @candies.each do |candy|
      if candy.type == name
        return true
      end
      return false
    end
  end

end