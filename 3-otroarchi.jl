#cadenas
"a0" < "a1"
"aaa" < "aab"

ca= ["aaaaa", "gato", "zepeda", "ave", "aaron"]

for i = 1:5
     for j = 1:4
     	if ca[j] > ca[j+1]
     		aux = ca[j]
     		ca[j]=ca[j+1]
     		ca[j+1] = aux	
     	end
     end
end

println("$ca")

println (repeat("jja..\n",10))
repeat("abc",3)

a = "solamente"

repeat ("$a Carrera",2)
# se puede usar ^
"$a Carrera"^2

print ("2+2=(2+2)\n")

print("2+2=$(2+2)\n")

print("\n",int ('\r'),"\n")

int ('\r')

#usando sublime escribimos for [tab], el rango sera a como lista
for i = a
	println("$i")
end


function calabacita(x,y)
	print(x)
end

print ("calabacita(3,4)=$(calabacita(3,4))")


fun(x,y)=x+y



print("\n$(fun(1,1))\n")

print("\napply(fun,2,3)=$(apply(fun,2,3))\n")




+(1,2,3)
print("+(1,2,3,4)= $(+(1,2,3))\n")

#using Gadfly

#plot(x -> x^3 - 9x, -5, 5)



comparacion(x, y) = println(x < y ? "x=$x es menor que y=$y": x > y ? "x es mayor que y" : "x es igual a y")

comparacion(4, 5)



function foo(n)
  f = y -> n + x + y
  x = 1
  f(4)
end

n=20

print("usando la funcion foo(n)==> [$(foo(n))]\n")


include("archivo.jl")
println("llamando una funcion desde otro archivo!!!!!!!!!!!!!!!!\n ")
println("otro(2,2)>(x+2y+1) = $(otro(2,2))")