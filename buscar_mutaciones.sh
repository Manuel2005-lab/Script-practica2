> pacientes_candidatos_BRAF.fasta
#Asi se creara una carpeta donde iran los resultados que me interesan. Lo pongo fuera del bucle porque prefiero no saber que pasara si se repite su creacion en cada bucle
for file in *.fasta
#Acabo de explicar que el script que voy a crear va a afectar a todos los archivos .fasta, ademas de eso tambien indico que cada vez que ponga file en los comandos esto significara todos los .fasta
	do grep -B 1 --no-group-separator "CTACAGAGAAATC" "$file" >> pacientes_candidatos_BRAF.fasta
#El grep busca entre las file lo que he puesto entre parentesis y al poner -B 1 tambien añade la linea de arriba. El no group lo he puesto porque al mostrar mi codigo a mi guia de confianza me ha dicho que las separaciones del grep no son compatibles con el .fasta. El >> es para que al añadir nueva info no me borre lo viejo
done
#Significa que ya ha terminado el bucle
echo "Asi se ha hecho mi senor"
#El echo es para que ponga algo en la pantalla. La practica no lo pide, pero me gusto como implementación

