using PyCall

#llamdo a funciones de C
t = ccall( (:clock, "libc"), Int32, ())

println(t)

typeof(t)


path = ccall( (:getenv, "libc"), Ptr{Uint8}, (Ptr{Uint8},), "SHELL")


println(bytestring(path))
#importamos a python para usarlo dentro del programa NO como un programa dentro del programa julia

#  Pkg.add("PyCall")


@pyimport math

println(math.sin(0.3 * math.pi) - sin(0.1 * pi))

#pi es de julia 
#math.pi es de python