# Create a file for mmapping
# (you could alternatively use mmap_array to do this step, too)
A = rand(1:20, 5, 30)
println(A)
s = open("/home/neomatrix/Escritorio/mmap.bin", "a+")
# a+ es creacion, lectura y escritura
write(s, size(A,1))
write(s, size(A,2))
# Now write the data
write(s, A)
close(s)

println("archivo escrito sin problemas")

# Test by reading it back in
s = open("/home/neomatrix/Escritorio/mmap.bin")   # default is read-only
println("archivo abierto sin problemas")

#l = readlines(s)  #lee todas las lineas del archivo

m = read(s, Int)
println(m)

n = read(s, Int)
println(n)
A2 = mmap_array(Int, (m,n), s)

println(A2)