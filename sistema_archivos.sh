PS3="Seleccione la opción deseada: "

opciones=(
    "CREAR DIRECTORIO"
    "COPIAR ARCHIVOS"
    "MODIFICAR PERMISOS A UN ARCHIVO"
    "VISUALIZAR EL CONTENIDO DE UN ARCHIVO"
    "BORRAR UN ARCHIVO"
    "CAMBIAR EL NOMBRE DE UN ARCHIVO"
    "BORRAR UN DIRECTORIO"
    "REGRESAR"
)

select opt in "${opciones[@]}"; do
  echo --$opt
  case $opt in
    "CREAR DIRECTORIO")
      read -p "Ingrese el nombre del directorio: " ndir
      mkdir $ndir
      ;;
    "COPIAR ARCHIVOS")
      who -q
      ;;
    "MODIFICAR PERMISOS A UN ARCHIVO")
      read -p "Enter the first number: " n1
      read -p "Enter the second number: " n2
      echo "$n1 * $n2 = $(($n1*$n2))"
      ;;
    "VISUALIZAR EL CONTENIDO DE UN ARCHIVO")
      df -h
      ;;
    "BORRAR UN ARCHIVO")
      df -h
      ;;
    "CAMBIAR EL NOMBRE DE UN ARCHIVO")
      df -h
      ;;
    "BORRAR UN DIRECTORIO")
      df -h
      ;;
    "REGRESAR")
        bash "practicaFinal.sh"
        exit
        ;;
    *) 
      echo "Opción Invalida $REPLY"
      ;;
  esac
done