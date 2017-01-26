class Line
  attr_accessor :start_point, :end_point

  def initialize (start_point,end_point)
    @start_point  = start_point
    @end_point = end_point
  end

  def length
    diff_x = @start_point.x - @end_point.x
    diff_y = @start_point.y - @end_point.y
    (diff_x**2 + diff_y**2)**0.5
  end

  def longer_than?(second_line)
    self.length > second_line.length
  end
end
