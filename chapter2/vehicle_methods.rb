class Vehicle

  attr_accessor :gas_used, :odometer

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    @odometer / @gas_used;
  end

end

class Car < Vehicle
end

class Truck < Vehicle
  attr_accessor :cargo
  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel."
  end
end

class DragRacer < Car
  def accelerate
    puts "Inject nitrous!"
  end
end

truck = Truck.new
truck.accelerate
truck.steer
truck = Truck.new
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}."

car = Car.new
car.odometer = 11432
car.gas_used = 366
puts "Lifetime MPG:"
puts car.mileage

motorcycle = Motorcycle.new
motorcycle.steer

speedcar = DragRacer.new
speedcar.odometer = 500
speedcar.gas_used = 200.0
speedcar.accelerate
puts format("Speedcar uses %.4f galons/km", (speedcar.gas_used / speedcar.odometer))