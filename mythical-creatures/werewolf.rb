class Werewolf

  attr_reader :name,
              :location,
              :form,
              :hungry

  def initialize(name, location = "Transylvania")
    @name = name
    @location = location
    @form = "human"
    @hungry = false
  end

  def human?
    @form == "human"
  end

  def change!
    if @form == "werewolf"
      @form = "human"
    elsif @form == "human"
      @form = "werewolf"
      @hungry = true
    end
  end

  def wolf?
    @form == "werewolf"
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    if wolf?
      victim.status = :dead
      @hungry = false
      return true
    else
      return false
    end
  end

end