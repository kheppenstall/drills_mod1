class Dragon

  attr_reader :name,
              :color,
              :rider,
              :food_eaten

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @food_eaten = 0
  end

  def hungry?
    if @food_eaten >= 3
      false
    else
      true
    end
  end
  
  def eat
    @food_eaten += 1
  end

end


