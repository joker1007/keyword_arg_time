require 'date'

class DateTime
  class << self
    alias_method :__origin_now__, :now

    def now(start = Date::ITALY, year: nil, mon: nil, day: nil, hour: nil, min: nil, sec: nil)
      n = __origin_now__(start)
      new(
        year || n.year,
        mon  || n.mon,
        day  || n.day,
        hour || n.hour,
        min  || n.min,
        sec  || n.sec,
        start
      )
    end
  end

  def copy(start = Date::ITALY, year: nil, mon: nil, day: nil, hour: nil, min: nil, sec: nil)
    self.class.new(
      year || self.year,
      mon  || self.mon,
      day  || self.day,
      hour || self.hour,
      min  || self.min,
      sec  || self.sec,
      start
    )
  end
end
