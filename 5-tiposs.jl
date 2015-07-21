y = 30
#x :: INT8         # una variable por sí
#locales  x :: INT8
#x::Int = 10


x=(2+2)::Int64
print("y = 30 [$y]\nx=(2+2)::Int64 [$x]\n")

#print("y=$y\nx :: INT8  =$x")


IntOrString = Union(Int,String)

print(1 :: IntOrString,"\n")


print("Hello!" :: IntOrString,"\n")


#print(1.0 :: IntOrString,"\n")  esto no es posible el tipo de dato no es int o string

#tuplas
print(( 1 , "foo" , 2.5 )  ::  ( Int64 , String , Any ), "\n")



#METODOS
f(x::Float64, y::Float64) = 2x + y
f(x::Number, y::Number) = 2x + y
+(x::String, y::String) = string(x, y)
+(x::String, y::Number) = x + string(y)

println("2(5.7) + 4.3 = ",f(5.7, 4.3))
println("2(3)+2 =",f(3,2))
println("2(4.3)+2 = ",f(4.3,2))
println("2(3)+2.8 = ",(3 f 2.8))
"2" + 6 # esto lo llama al ponerlo entre los parametros, solo porque + es una funcion del nucleo o sistema


println((1 + 2im)//(1 - 2im))

#metodos ambiguos
g(x::Float64, y) = 2x + y #al no poner un tipo de dato este por defecto es any
g(x, y::Float64) = x + 2y
#los metodos se asignad de arriba hacia abajo

println(g(2.0, 3))
println(g(2, 3.0))
println(g(2.0, 3.0)) #en este caso se ejecuta el primer metodo a arriba hacia abajo que sea
			#compatible con los parametros (pero podria sr cualquiera)
#el typo funcion puede signarse o usarse como un valor

o(x) = 6x 

println(typeof(o)) #nos dice que o es de tipo funcion

# y podemos usar a o como un valor 

r= o  #asignamos a r el 'valor' de o 

println(typeof(r)) #verificamos el tipo

println(r(4)) #podemos usar a r como si fuera o

#podemos usar a o como si fuera un valor dentro de otra funcion

e()= o

e() #al ejecutarla nos devolvera la funcion o

e()(2) # nos devolvera la funcion o y evaluaremos a o con el valor 2

#constructores (tipos de datos defindos por el usuario)

type T1
  x :: Int64
  y :: String
end

type T2
  x :: Int64
  T2 ( x :: Int64 )  = new ( x )
end

println( "T1 ( 1 ) = ",T1 ( 1, "hola" ) )


println("T2 ( 1 ) = ",T2 ( 1 ) )


println("T1 ( 1.0 ) = ",T1 ( 1.0 , "hola") )

println("T2 ( 1.0 ) = ",T2 ( 1.0 ) )

a=T1 ( 1, "hola" )
b= T1 ( 3, "adios" )

a+b #es posible definir un metodo +(T1, T1)



#parametrico

type Punto{T}
  x::T
  y::T
end


print(Punto( 1.0 , 2.0 ),"\n")
print(Punto( 1 , 2 ),"\n")

punto = Punto(5,4)

punto.y

punto.y=8


print(Punto {Float64}(1.0,2.0),"\n")


typealias Vector{T} Array{T,1} #el tipo vector es un array definido con un parametro T y un 1
typealias Matrix{T} Array{T,2}


agrup{T}(v::Vector{T}, x::T) = [v..., x]

println("agrup([1,2,3],4) = ",agrup([1,2,3],4))
println("agrup([1.0,2.0,3.0],4.0) =",agrup([1.0,2.0,3.0],4.0))



#conversiones

x = 12

println(convert(Uint8, x))

println(convert(FloatingPoint, x))


println(promote(1, 2.5))


println(promote(1, 2.5, 3))


println(promote(2, 3//4))


println(promote(1, 2.5, 3, 3//4))


println(promote(1.5, im))


println(promote(1 + 2im, 3//4))


#tipos de datos que se componen de  FUNCIONES!!!!!!!!!!!!!!!!!!!!!

type F
	f::Function
	x::Float64
end

hello(x) = x^2

myfunc = F(hello, 3.0)

myfunc.f(myfunc.x)
