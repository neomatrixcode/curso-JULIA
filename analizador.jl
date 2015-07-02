
ex = :(a+b*c+1+3.4+"hola"+(4*3))
#ex = :(DESCUENTO = fijo + valor * 8 ) 
#ex = :(fijo + valor * 8 ) 


println(ex)
println(ex.args)
Meta.show_sexpr(ex)
println(" ")

(for i in 1:length(ex.args)
	println(
		eval(:
			(typeof(ex.args[$i]))
			),
		"    (",
		eval(:
			((ex.args[$i]))
			),
		")  "
		)  
end )

println(" ---------------------- ")

dump(ex)


