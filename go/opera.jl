
cont=1
ami=0

t=int(ARGS[1])
s=string(ARGS[2])

con=1

while(con<=length(ARGS[2]))
	if(s[con]=='0')
		ami=ami+1
	end
	con=con+1
end

print ("Case #$cont:$ami\n")