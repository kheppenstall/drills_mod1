class Tire

  @is_it_flat = false

  def flat?
    if @is_it_flat
      p "I ran over a nail!"
    else
      p "This tire is brand new"
    end
  end

  def blow_out
    @is_it_flat = true
  end

end