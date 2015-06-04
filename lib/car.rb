class Car
  #write Car class code here
  # make speed attribute
  attr_accessor :speed
  # car speed is 0 when initialized
  def initialize
  	@speed = 0
  end
  # car speed is equal to given speed
  def accelerate(speed = 0)
  	@speed = speed
  end
end