class MascotaVirtual
  attr_reader :alive

  def initialize name
    @name = name
    @sleep = false
    @satisfied = 10
    @fullIntestine = 0
    @alive = 1
    puts @name + ' nace!'
  end

  def wakeup
    if @sleep
      @sleep = false
      puts @name + ' despierta'
    end
  end

  def walk
    wakeup
    puts 'Haces caminar a ' + @name + '.'
    @satisfied -= 2
    @fullIntestine += 2
    timeLapse
  end

  def eat
    wakeup
    puts 'Le das comida a ' + @name + '.'
    @satisfied = 10
    timeLapse
  end

  def sleep
    puts @name + ' se va a dormir...'
    @sleep = true
    @satisfied -= 2
    timeLapse
  end

  def hungry?
    @satisfied <= 2
  end

  def needToGo?
    @fullIntestine >= 8
  end

  def timeLapse
    if @satisfied > 0
      @satisfied -= 1
      @fullIntestine -= 1
    else
      wakeup
      puts '¡' + @name + ' esta hambriento!  En su desesperacion, ¡Murio de Hambre!'
      @alive = 0
      exit
    end

    if @fullIntestine  >= 10
      @fullIntestine  = 0
      puts '¡Uy!  ' + @name + ' tuvo un accidente...'
    end

    if hungry?
      wakeup
      puts 'El estomago de ' + @name + 'retumba...'
    end

    if needToGo?
      wakeup
      puts @name + ' hace la danza del baño...'
    end
  end
end

def seleccion
  opciones = ['(1) alimentarlo', '(2) hacerlo dormir', '(3)salir a caminar']
  puts '¿Que quieres hacer?'
  opciones.each { |opcion| puts opcion }
  gets.chomp.to_i
end

mascota = MascotaVirtual.new('Juancho')
until mascota.alive == 0
  case seleccion
  when 1
    mascota.eat
  when 2
    mascota.sleep
  when 3
    mascota.walk
  else
    puts "No puedo hacer eso con #{mascota.name}!"
  end
end
