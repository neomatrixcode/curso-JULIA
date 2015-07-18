
♅ = "λ"
println(♅)

(println(+(1,3,4,6)))

(println(+(1,-(4, 1),*(2,2),/(12, 2))))


a=1;
b=2;
c=4;

expp = :(a+b+c)
println(expp, " = ", eval(expp))

(ex=:(+(a,c)))

(println(ex," = ",eval(ex)))

(ex2 =:(+($a,b)))

(println((ex2),(" = "),eval(ex2)))

dump(ex2)

for op = (:+, :*, :&, :|, :$)
  println(:(($op)(($op)($a,$b),$c))," = ",eval(:(($op)(($op)(a,b),c))))
end

#se supone que debe de reconocer el patron de caracteres
#enviar la expresion a una macro automaticamente
#y ejecutar la intruccion aqui o en consola
#tengo que revisarlo
#29/06/2015 ya lo encontre!!! es con run(instruccion)

println("desde bash!!!!!!!!!!!!!!:")
person="NEOMATRIX"
run(`echo "Hello, $person"`)

#para PERL
println("desde PERL!!!!!!!!!!!!!!:")
run(`perl -le '
$etiqueta1 = <<etiq1;

esta ,
  ES UNA PRUEBA DEL USO DE ETIQUETAS,

  			HEURISTICO!!!!!!!

etiq1

print $etiqueta1
'`)

cuentap(n) = `perl -le '
for(0..'$n'){ print }
'`

run(cuentap(3))


println("desde PYTHON!!!!!!!!!!!!!!:")
run(`python -c '

for i in range(1,4):
	print "Desde python",i
	'`)



println("desde RUBY!!!!!!!!!!!!!!:")
run(`ruby -e '
	
	puts "hola RUBY" 

	arr = [1,2,5,"hola",9.43]
	arr.each{|v| puts v}


	'`)

println("desde CLOJURE!!!!!!!!!!!!!!:")
run(`lein exec -e '
	

	(println

	((fn[x] x) "hola mundo")
	 (+ 1 2 3 4)

	 )

	'`)


#para llamar a una funcion de C!!!!!!!!!!!!
#ccall(:ctime, Ptr{Uint8}, ())  # estos funcionan bien en una consola
#bytestring(ccall(:ctime, Ptr{Uint8}, ()))



#MACROS

macro doble(ex)
	quote
		$ex
		$ex
	end
end

@doble println(sin(10))

macroexpand(:(@doble println(sin(10))))

macro corre(expr1, expr2)
	quote
		while !($expr1)
		$expr2
		end
	end
end


i=0
@corre i==10  begin
	println(i)
	i += 1
end


macroexpand(:(@corre i==10  begin
	println(i)
	i += 1
end
))


macro ecuacion(x, p...)
	ex = esc(p[end])
	for i = length(p)-1:-1:1
		ex = :($(esc(p[i]))+t * $ex)
	end
	Expr(:block, :(t = $(esc(x))), ex)
end

x=3   
@ecuacion(x, 2,3,4)  #evaluara 2+3x+4x²  en x=3; usando un metodo numerico horn


macroexpand(:(@ecuacion(x, 2,3,4)))

x= 3.5
@printf("%.5f", x)
@printf("%d", x)
macroexpand(:@printf("%d", x))
@printf("%s", x)