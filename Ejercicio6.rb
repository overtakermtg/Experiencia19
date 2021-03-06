# Crear una clase Student con un método constructor que recibirá 3 argumentos 
# (nombre, nota1 y nota2). Cada una de las notas tendrá, por defecto, 
# valor 4 en el caso que no se ingrese una nota al momento de crear una nueva instancia.

# La clase también debe tener una variable de clase llamada quantity 
# la que será iniciada en 0 y se incrementará en 1 cada vez que se instancie un nuevo objeto.

# Crear un módulo Test con un método result. 
# Este método debe calcular el promedio de 2 notas y si ese promedio es superior a 4 
# entregrar un mensaje que debe decir "Estudiante aprobado". En caso contrario, 
# enviará un mensaje "Estudiante aprobado".

# Crear un segundo módulo Attendance con un método student_quantity que permita 
# mostrar en pantalla la cantidad de estudiantes creados.


# Añadir a la clase Student el módulo Test como métodos de instancia y el 
# módulo Attendance como métodos de clase.
# Crear 10 objetos de la clase Student y utilizar los métodos creados para saber 
# si los alumnos están aprobados o no y, finalmente, mostrar el total de alumnos creados.

module Attendance
	@@instancie = 0
	def student_quantity()
		@@instancie += 1
	end
end

module Test
	def result
		if (@nota1.to_f + @nota2.to_f)/2 >= 4
			"Estudiante aprobado!"
		else
			"Estudiante reprobado!"
		end
	end
end

class Student
	include Test
	include Attendance
	@@quantity = 0
	attr_accessor :nombre, :nota1, :nota2
	def initialize(nombre, nota1=4, nota2=4)
		@nombre = nombre
		@nota1 = nota1
		@nota2 = nota2

		self.student_quantity
		@@quantity += 1
	end


end
arr_student = []
10.times do |t|
	 arr_student << Student.new("Estudiante#{t}", rand(1..7),  rand(1..7)).result
end 

puts arr_student




