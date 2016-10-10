class Centaur

  attr_reader :name,
              :breed,
              :activities,
              :position

  def initialize(name, breed)
    @name = name
    @breed = breed
    @activities = 0
    @position = 'standing'
  end

  def shoot
    unless cranky? || laying?
      @activities += 1
      'Twang!!!'
    else
      'NO!'
    end
  end

  def run
    unless cranky? || laying?
        @activities += 1
        "Clop clop clop clop!!!"
      else
        'NO!'
      end
  end

  def cranky?
    if @activities >= 3
      return true
    else
      return false
    end
  end
  
  def standing?
    if @position == 'standing'
      true
    else
      false
    end
  end

  def laying?
    if @position == 'laying'
      true
    else
      false
    end
  end

  def sleep
    if standing?
      'NO!'
    else
      @activities = 0
    end
  end

  def lay_down
    @position = 'laying'
  end

  def stand_up
    @position = 'standing'
  end

  def drink_potion
    if laying?
      'NO!'
    elsif @activities == 0
      "I am sick!!"
    else
      @activities = 0
    end
  end

end