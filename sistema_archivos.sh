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
      if test -d $ndir
      then
        echo "ERROR. Directorio '$ndir' ya existe"
        ls
      else
        mkdir $ndir
        echo "Directorio creado"
        ls
      fi
      ;;
    "COPIAR ARCHIVOS")
      ls
      read -p "Ingrese nombre de archivo:" nfile
      read -p "Ingrese ruta de destino:" nruta
      cp $nfile $nruta
      echo "Archivo copiado"
      ;;
    "MODIFICAR PERMISOS A UN ARCHIVO")
      read -p "Enter the first number: " n1
      read -p "Enter the second number: " n2
      echo "$n1 * $n2 = $(($n1*$n2))"
      ;;
    "VISUALIZAR EL CONTENIDO DE UN ARCHIVO")
      ls
      read -p "Ingrese nombre de archivo:" narch
      if test -f $narch
      then
        cat $narch
      else
        echo "ERROR. Archivo $narch no existe."
        ls
      fi
      ;;
    "BORRAR UN ARCHIVO")
      ls
      read -p "Ingrese nombre de archivo:" narch
      rm $narch
      echo "Archivo borrado"
      ls
      ;;
    "CAMBIAR EL NOMBRE DE UN ARCHIVO")
      ls
      read -p "Ingrese nombre de archivo:" narch
      read -p "Ingrese NUEVO nombre de archivo:" newnarch
      mv $narch $newnarch
      echo "Nombre de archivo cambiado"
      ls
      ;;
    "BORRAR UN DIRECTORIO")
      ls
      read -p "Ingrese el nombre del directorio: " ndir
      rmdir $ndir
      echo "Directorio eliminado"
      ls
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