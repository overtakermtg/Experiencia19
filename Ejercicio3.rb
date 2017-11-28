# Se tiene la clase Vehicle que recibe como argumento un modelo y un año. 
# El método engine_start enciende el vehículo.

class Vehicle
	attr_accessor :start, :model
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

# Se pide:

# Crear una clase Car que herede de Vehicle
# El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un contador de instancias de Car.
# Crear un método de clase en Car que devuelva la cantidad de instancias.
# El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
# Instanciar 10 Cars.
# Consultar la cantidad de instancias generadas de Car mediante el método de clase creado.

class Car < Vehicle
	@@count_Instances = 0
	def initialize(model, year)
	 	@@count_Instances += 1
	end 

  	def self.instance_count
  		@@count_Instances
  	end

	def engine_start
    	super
    	"El motor se ha encendido!"
  	end
end
arr_cars = []
10.times { arr_cars << Car.new('auto', 2015)}


puts Car.instance_count
puts arr_cars[0].engine_start











