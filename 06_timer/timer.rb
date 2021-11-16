class Timer

  # when a timer is created without any params,
  # we set the default number of time/secs to zero
  def initialize
    @secs = 0
  end

  # getter method
  def seconds
    @secs
  end

  # setter method
  def seconds=(s)
    @secs = s
  end

  # takes no params, this converts num of seconds to 
  # time string in format HH:MM:SS
  def time_string
    hours = @secs / 3600    # convert sec -> hr
    remainder = @secs % 3600

    mins = remainder / 60
    secs = remainder % 60

    # use Ruby built-in string formatting like printf() in other languages
    "%02d:%02d:%02d" % [hours, mins, secs]    # returns string in HH:MM:SS format
  end




end
