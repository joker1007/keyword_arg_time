class Time
  class << self
    alias_method :__origin_now__, :now

    def now(year: nil, mon: nil, day: nil, hour: nil, min: nil, sec: nil, usec: nil)
      n = __origin_now__
      local(
        year || n.year,
        mon  || n.mon,
        day  || n.day,
        hour || n.hour,
        min  || n.min,
        sec  || n.sec,
        usec || n.usec,
      )
    end
  end

  def copy(year: nil, mon: nil, day: nil, hour: nil, min: nil, sec: nil, usec: nil)
    self.class.local(
      year || self.year,
      mon  || self.mon,
      day  || self.day,
      hour || self.hour,
      min  || self.min,
      sec  || self.sec,
      usec || self.usec,
    )
  end
end
