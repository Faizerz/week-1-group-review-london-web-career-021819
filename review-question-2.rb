# Finish the implementation of the Car class so it has the functionality described below
require 'pry'
class Car

  attr_reader :make, :model
  @@all = []
  def initialize(attributes)
    @make = attributes[:make]
    @model = attributes[:model]
    @@all << self
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@all
  end

end
#
# volvo_lightning = Car.new("Volvo", "Lightning")
# yugo = Car.new("Zastava", "Yugo")
# lada = Car.new("AvtoVAZ", "Lada")

# volvo_lightning.make
# #=> "Volvo"
# volvo_lightning.model
#=> "Lightning"

# yugo.drive
# # => "VROOOOOOOOOOOOM!"
# pry
Car.all
#=> [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]

# BONUS:

volvo_lightning = Car.new({make: "Volvo", model: "Lightning"})

volvo_lightning.make
#=> "Volvo"
pry
volvo_lightning.model
#=> "Lightning"
