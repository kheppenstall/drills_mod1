class Time

  attr_reader :year,
              :month,
              :day,
              :hour,
              :min,
              :date

  def initialize(year, month, day, hour, min = 0)
    @year = year
    @month = month
    @day = day
    @hour = hour
    @min = min
    @date = [year, month, day, hour, min]
  end

end