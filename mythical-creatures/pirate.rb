class Pirate
  attr_reader :name,
              :job,
              :heinous_acts,
              :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @heinous_acts = 0
    @booty = 0
  end

  def cursed?
    if @heinous_acts >= 3
      true
    else
      false
    end
  end

  def commit_heinous_act
    @heinous_acts += 1
  end

  def rob_ship
    @booty = 100

  end
end