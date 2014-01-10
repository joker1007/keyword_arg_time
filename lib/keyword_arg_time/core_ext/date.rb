require 'date'

class Date
  class << self
    alias_method :__origin_today__, :today

    def today(start = Date::ITALY, year: nil, mon: nil, day: nil)
      t = __origin_today__(start)

      new(
        year || t.year,
        mon  || t.mon,
        day  || t.day,
      )
    end
  end

  def copy(year: nil, mon: nil, day: nil)
    self.class.new(
      year || self.year,
      mon  || self.mon,
      day  || self.day,
    )
  end
end
