require_relative '/carta.rb'

class baraja
  attr_accessor :cartas

   initialize
  carta =[]

  end

  def baraja
    colores = ["Corazon","Trebol","Diamante","Picas"]
    for color in colores
      13.times do |i|
        carta_x = Carta.new(i+1,color)
        @cartas << carta_x
      end
    end
    @cartas
  end
  def revolver
    @cartas.shuffle!
  end

  def seleccionar
    @cartas.pop
  end

  def mano
    @cartas.pop(5)
  end
end
