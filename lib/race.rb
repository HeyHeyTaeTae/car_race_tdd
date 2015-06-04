require_relative 'car'

class Race
  #write Race class code here
  # initialize creates two cars
  attr_accessor :cars
  def initialize
  	car1 = Car.new
  	car2 = Car.new
  	car1.speed = rand(0..100)
  	car2.speed = rand(0..100)
  	@cars = []
  	@cars.push(car1).push(car2)
  end
  def winner
    return @cars[0] if @cars[0].speed > @cars[1].speed
    return @cars[1] if @cars[1].speed > @cars[0].speed
  end
  def loser
  	return @cars[1] if @cars[0].speed > @cars[1].speed
    return @cars[0] if @cars[1].speed > @cars[0].speed
  end
end
