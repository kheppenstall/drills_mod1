class Adult

  def initialize
    @drinks = 0
  end

  def sober?
    if @drinks < 3
      return true 
    else
      return false
    end
  end

  def consume_an_alcoholic_beverage
    @drinks += 1
  end

end