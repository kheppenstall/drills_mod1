class Wallet

  attr_reader :cents,
              :pennies,
              :nickels,
              :dimes,
              :quarters,
              :dollars

  def initialize
    @cents = 0
    @pennies = 0
    @nickels = 0
    @dimes = 0
    @quarters = 0
    @dollars = 0
  end

  def <<(coin)
    if coin == :penny
      @cents += 1
      @pennies += 1
    elsif coin == :nickel
      @cents += 5
      @nickels += 1
    elsif coin == :dime
      @cents += 10
      @dimes += 1
    elsif coin == :quarter
      @cents += 25
      @quarters += 1
    elsif coin == :dollar
      @cents += 100
      @dollars += 1
    end
  end

  def take(*coins)
    coins.each do |coin|
      if coin == :penny && @pennies != 0
        @cents -= 1
      elsif coin == :nickel && @nickels != 0
        @cents -= 5
      elsif coin == :dime && @dimes != 0
        @cents -= 10
      elsif coin == :quarter && @quarters != 0
        @cents -= 25
      elsif coin == :dollar && @dollars != 0
        @cents -= 100
      end
    end
  end


end