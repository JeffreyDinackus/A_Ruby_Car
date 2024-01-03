


class Vehicle


  attr_accessor :color

  attr_reader :year, :model, :number_of_vehicles, :type

  @@number_of_vehicles = 0
  def initialize(year, color, model)

    @year = year

    @color = color

    @model = model

    @current_speed = 0
    @@number_of_vehicles +=1
  end

   def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def to_s

    "Your year is #{@year}, your model is #{@model}, your color is #{@color}, your type is #{@type}"
  end


  def speed_up(num)
    @current_speed += num
    puts "Speed increased by #{num}"
  end

  def brake
    @current_speed = 0
    puts "You are now stopped"
  end

  def gas_milage(miles, gallons)
      puts "#{miles/gallons} is your gas milage"
  end

  def age
    "Your #{self.model} is #{years_old} years old."


  end

  private

  def years_old
    Time.now.year - self.year
  end
end


module Offroadable
  def offroad
    puts "NOW i'm offroading"
  end

end


class MyCar < Vehicle


  def initialize(year, color, model)


    super(year, color, model)
    @type = "car"

  end

end

class MyTruck < Vehicle

  def initialize(year, color, model)

    super(year, color, model)

    @type = "truck"
    @towing = "nothing"
  end


  def tow(object)
    @towing = object
    puts "we are not towing #{object}"
  end
end


class Buggy < Vehicle
include Offroadable

def initialize(year, color, model)

  super(year, color, model)

end


end



prius = MyCar.new(2010, "blue", "Prius")


prius.speed_up(20)


prius.brake

prius.gas_milage(400,8)

puts prius

MyTruck.number_of_vehicles

ford = MyTruck.new(2022,"red", "f150")

# showing before and after creation of truck. The vehicle class counts all types of vehicles init with it.
MyTruck.number_of_vehicles

puts prius.color

prius.color = "red"

puts prius.color

jeep = Buggy.new(2011,"black","wrangler")



jeep.offroad

puts jeep.age

puts MyCar.ancestors
