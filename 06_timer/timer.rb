class Timer
  attr_accessor :seconds
  def initialize seconds=0
    @seconds = seconds
    @hours_string = "00"
    @minutes_string = "00"
    @seconds_string = "00"
  end

  def time_string
    if @seconds >= 3600
      hours
    elsif @seconds >= 60 && @seconds < 3600
      minutes
    elsif @seconds > 0
      sec
    else
      p "#{@hours_string}:#{@minutes_string}:#{@seconds_string}"
    end
  end

  def hours
    hours_number = @seconds / 3600
    if hours_number < 10
      @hours_string = "0#{hours_number}"
    else
      @hours_string = "#{hours_string}"
    end
    # calcul of the remaining time
    @seconds = @seconds - hours_number * 3600
    if @seconds >= 60
      minutes
    else
      sec
    end
  end

  def minutes
    minutes_number = @seconds / 60
    if minutes_number < 10
      @minutes_string = "0#{minutes_number}"
    else
      @minutes_string = "#{minutes_string}"
    end
    # calcul of the remaining time
    @seconds = @seconds - minutes_number * 60
    if @seconds > 0
       sec
    else
      time_string
    end
  end

  def sec
    if @seconds < 10
      @seconds_string = "0#{@seconds}"
    else
      @seconds_string = "#{@seconds}"
    end
    @seconds = 0
    time_string
  end

end
