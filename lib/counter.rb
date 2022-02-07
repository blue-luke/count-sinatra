class Counter
  attr_reader :count, :last_updated

  def initialize
    @count = 0
    @last_updated = nil
  end

  def increment
    update_last_updated
    @count += 1
  end

  def decrement
    update_last_updated
    @count -= 1
  end

  def reset
    update_last_updated
    @count = 0
  end

  def last_updated
    @last_updated
  end

  def update_last_updated
    @last_updated = Time.now.strftime("%H:%M")
  end

  def self.instance
    @counter ||= Counter.new
  end
end
