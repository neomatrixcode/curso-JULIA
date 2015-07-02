#coding: utf-8 
import os
import re
import shutil
import time
import datetime
import codecs

def proceso (cadena, can):

	try:
		a= cadena.split()
		rr= a[1]
		ami=0

		if (('0' in rr)== True):
			suma=0
			pos=0
			for c in rr:
				if(c !='0'):
					if(pos > suma):
						ami= pos-suma
				suma= (suma+int(c))
				pos= pos+1
			
			print "Case #"+str(can)+":"+str(ami)

		else:
			print "Case #"+str(can)+":0"
		
			

	except Exception, e:
		return None




	

if __name__ == "__main__":

	archivoconf= "A-small-attempt4.in"

	if (os.path.exists(archivoconf)==False):
	
		print "------------------------<!!!!!!!!!!!>--------------------------------"
		print "No hay un archivo a leer"
		exit(0)

	#try:
	f = codecs.open(archivoconf, "r","utf-8")
	

	fs = open("salida.txt","r+")


	can=0

	for line in f:
		#print line
		proceso(line,can)
		can = can+1

	f.close()
	fs.close()
	

	