# Transformar la clase Herviboro en un módulo. 
# Implementar el módulo en la clase Conejo mediante Mixin para poder acceder al método dieta desde la instancia. 
# Finalmente imprimir la definición de Hervíboro.

module Herviboro
  Definir = 'Sólo me alimento de vegetales!'

    def dieta
      "Soy un Herviboro!"
    end

    def self.definir
      Definir
    end

end


class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  include Herviboro
  # extend Herviboro

  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herviboro.definir

# Pregunta: ¿Por qué es mejor solución la implementación de Mixin que mediante Herencia de Herencia?
# porque una clase solo puede heredad una clase .... los modulos permiten agregar mas funcionalidades 
