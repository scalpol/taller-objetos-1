class Student
  attr_accessor :name, :nota
  def initialize(name, nota)
    @name = name
    @nota = nota
  end
end

nombres = %w[Alicia Javier Camila Francisco Pablo Josefina]
alumnos = []
contador = 1

nombres.each do |nombre|
  alumnos << Student.new(nombre, contador)
  contador += 1
end

notas = []
alumnos.map { |alumno| notas << alumno.nota }
