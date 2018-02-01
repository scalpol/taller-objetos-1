class Dog
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end

  def ladrar
    puts "#{@nombre} está ladrando!"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro1 = Dog.new(propiedades)
perro1.ladrar
