require_relative 'car'

class Race
  #write Race class code here
  # initialize creates two cars
  attr_accessor :cars
  def initialize
  	# create two instances of cars
  	car1 = Car.new
  	car2 = Car.new
  	# set speed of both cars to a random num 0-100
  	car1.speed = rand(0..100)
  	car2.speed = rand(0..100)
  	# create empty instance array
  	@cars = []
  	# push both instances into instance array
  	@cars.push(car1).push(car2)
  end
  def winner
  	# compares speed and returns car with greater speed
    return @cars[0] if @cars[0].speed > @cars[1].speed
    return @cars[1] if @cars[1].speed > @cars[0].speed
  end
  def loser
  	# compares speed and returns car with lesser speed
  	return @cars[1] if @cars[0].speed > @cars[1].speed
    return @cars[0] if @cars[1].speed > @cars[0].speed
  end
end
