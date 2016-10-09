class Wizard
  
  attr_reader :name,
              :bearded,
              :casted_spells

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @casted_spells = 0
  end

  def bearded?
    return @bearded
  end

  def incantation(powers)
    "sudo " + powers
  end

  def cast
    @casted_spells += 1
    "MAGIC MISSILE!"
  end

  def rested?
    if @casted_spells < 3
      return true
    else
      return false
    end
  end

end