require_relative 'item'

class Clearance
  attr_reader :list

  def initialize
    @list = []
  end

  def <<(item)
    @list << item
  end

  def best_deal
    if @list.length == 0
      return nil
    else
      @list.sort_by! do |item|
        item.percent_off
      end
      return @list.last.name
    end
  end

end