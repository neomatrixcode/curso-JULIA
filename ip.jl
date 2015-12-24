#ip
function ips(ip,bitsmas)
 dir=split(ip,".")

mascara = bitsmas

s=""
for i=1:4
	s = s * string(bits(parse(UInt8,dir[i])))
	s = s * "."
end	

println("$s     $ip/$bitsmas")

mascarabits=""
cont=1
for i=1:mascara
	mascarabits= mascarabits*"1"
	if(i%8==0)
		mascarabits= mascarabits*"."
	end
	cont= cont+1
end

for i=cont:32
	mascarabits= mascarabits*"0"
	if(i%8==0)
		mascarabits= mascarabits*"."
	end
	cont= cont+1
end

println(mascarabits)

resul=""
for j=1:35
	if s[j] == mascarabits[j]
		resul = resul*string(s[j]) 
	else
		resul = resul*"0"
	end
	
end

println(resul)


end



#ips("192.168.1.10",27)
#ips("192.168.1.75",26)
#ips("192.168.5.55",26)
#ips("192.168.5.15",28)
#ips("192.168.5.75",26)
#ips("192.168.5.55",29)
#println("**************************************************+++")
#ips("192.168.5.75",27)
#ips("192.168.5.55",27)
#println("**************************************************+++")
#ips("192.168.5.75",28)
#ips("192.168.3.10",28)
#println("**************************************************+++")
#ips("192.168.3.33",29)
#ips("192.168.3.72",27)
#println("**************************************************+++")
#ips("192.168.3.64",27)
ips("192.168.1.10",28)
println("**************************************************+++")
ips("192.168.5.15",29)