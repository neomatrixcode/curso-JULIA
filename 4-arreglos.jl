#!/usr/bin/env julia

A = [0:2:10]

println("el arreglo es: ",A)
println("su numero de dimensiones: ",ndims(A))
println("el tamano de la dimension 1: ",size(A,1))
println("tupla con las dimenciones del arreglo: ",size(A) )
println("tipo de datos del arreglo:",eltype(A) )
println("numero de elemnos del arreglo: ",length(A) )
println("cuantos elementos no son cero?? ",countnz(A) )
println(stride(A,1),"\n") 


#usamos ∈ para saber si un elemento pertenece a una estructura de datos 
println("2 ∈ A : $(2 ∈ A)") 
println("1 ∈ A : $(1 ∈ A)") 


B = [i^2+i for i=0:10]

println("el arreglo es: ",B)
println("su numero de dimensiones: ",ndims(B))
println("el tamano de la dimension 1: ",size(B,1))
println("tupla con las dimenciones del arreglo: ",size(B) )
println("tipo de datos del arreglo:",eltype(B) )
println("numero de elemnos del arreglo: ",length(B) )
println("cuantos elementos no son cero?? ",countnz(B) )
println(stride(B,1),"\n") 


#aqui un vector de vectores

x = Vector[ ["Alex", 9], ["David", 12], ["Daniel", 12]]

#matrices

p(x)=x+2

c = [p(i)+2j for i=1:5, j=1:7]

println("el arreglo es: ",c)
println("su numero de dimensiones: ",ndims(c))
println("el tamano de la dimension 1: ",size(c,1))
println("tupla con las dimenciones del arreglo: ",size(c) )
println("tipo de datos del arreglo:",eltype(c) )
println("numero de elemnos del arreglo: ",length(c) )
println("cuantos elementos no son cero?? ",countnz(c) )
println(stride(c,1)) 


#vector de matrices
println("\n {eye(n) for n=1:4} = $({eye(n) for n=1:4}),\n\n")



x = reshape(1:16, 4, 4) # crea una matrix de 4x4 con numeros del 1 al 16

println(x)
println("extrayendo 2 a la 3 y de la 2 ala ultima-1 \n $(x[2:3, 2:end-1])")   # extraes de la matrix a los elementos en las filas 1 a la ultima-1 y de las columnas 1 a la 2


λ= [3. , "a"] # 3. pasa a ser automaticamente 3.0

β= [3. , 'a']  # cuando se coloca '' se toam el valor del caracter no el string

push!(β, 5) #  push! se utiliza para agregar un elemento en cualquier estructura de datos ¡LA QUE SEA!

θ = [3. ,  4.]

#PARA LAS OPERACIONES ARITMETICAS SE PUEDE USAR + - ETC EXEPCTO EN LA MULTIPLICACION DE VECTORES HAY SE USA dot()

dot(θ,β)

#para el producto vectorial se usa \cdot

λ ⋅ β  

#para el producto escalar se usa \times

λ × β

"LᴬTₑX"


#matrices el ; indica una nueva fila

γ = [1 2 ; 1 2]

#o tambien se puede declarar como si se escribiera en papel

Ι = [
     1 2 
     3 2
    ]

#PARA MULTIPLICAR MATRICES USAMOS *
γ*Ι