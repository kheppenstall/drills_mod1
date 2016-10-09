class Item

  attr_reader :name,
              :price,
              :discount

  def initialize(name, price, discount)
    @name = name
    @price = price
    @discount = discount
  end

  def percent_off
    return @discount.to_f / @price.to_f
  end

end