class LeatherChair

  @faded = false

  def faded?
    if @faded
      p "Exposed chairs are faded."
    else
      p "New chairs are NOT faded."
    end
  end

  def expose_to_sunlight
    @faded = false
  end
end
