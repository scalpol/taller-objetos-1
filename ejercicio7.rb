class Punto
  attr_accessor :x, :y
  def initialize
    @x = rand(100)
    @y = rand(100)
  end
end

10.times { Punto.new }
