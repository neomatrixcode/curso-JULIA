
println("leyendo un string, escriba algo")
k = readline(STDIN)

println(k)

println("leyendo bytes, escriba algo")

W= readbytes(STDIN,4)

println(W)



#pensando al teclado como un archivo el for recorre todo el tiempo el dispositivo cuando hay un caracter lo muestra; todo el tiempo esta leyendo!!!!
#for line in eachline(STDIN)
#    print("Found $line")
#end


#tcp!!!!!!!!!!!!!!!!

#server = listen(ip"127.0.0.1",2000) # levanta el servidor en locaalhost y puerto 2000

#listen(ip"::1",2000) # levanta el servidor en locaalhost y puerto 2000 usando ipv6


#listen(IPv4(0),2001) # Listens on port 2001 on all IPv4 interfaces


#listen(IPv6(0),2001) # Listens on port 2001 on all IPv6 interfaces


#listen("testsocket") # Listens on a domain socket/named pipe

#while true   #entra en un ciclo esperand conexiones
#           sock = accept(server)  #espera desde la direccion y soket establecido
#           println("Hello World\n")  #mesage que mostrara al conectarse al servidor
#         end


#usando una macro
#@async begin
#         server = listen(ip"127.0.0.1",2000)
#         while true
#           sock = accept(server)
#           println("Hello World\n")
#         end
#       end


#conectandose al servidor
#cliente = connect("127.0.0.1",2000)
#para desconectarse
#close(cliente)

#tambien se puede conectar a nombres de dominio
clie = connect("google.com",80)
close(clie)

#podemos obtener la ip del dominio
getaddrinfo("google.com")


#estableciendo una conversacion

@async begin
         server = listen(ip"127.0.0.1",2001)
         while true
           sock = accept(server)
           println("Hola usuario!!!\n")
           @async while isopen(sock)
             write(sock,readline(sock))
           end
         end
       end


clientside=connect("127.0.0.1",2001)


@async while true
          write(STDOUT,readline(clientside))
       end

println(clientside,"Hello World desde el servidor")

