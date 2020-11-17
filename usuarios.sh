PS3="Seleccione la opción deseada: "

opciones=(
    "MOSTRAR NOMBRE DE USUARIOS CONECTADOS"
    "MOSTRAR NUMERO DE USUARIOS CONECTADOS"
    "AVERIGUAR SI UN USUARIO ESTA CONECTADO"
    "ENVIAR MENSAJE A UN USUARIO"
    "REGRESAR"
)

select opt in "${opciones[@]}"; do
  echo --$opt
  case $opt in
    "MOSTRAR NOMBRE DE USUARIOS CONECTADOS")
      who
      ;;
    "MOSTRAR NUMERO DE USUARIOS CONECTADOS")
      who -q
      ;;
    "AVERIGUAR SI UN USUARIO ESTA CONECTADO")
      read -p "Ingrese nombre de usuario:" nuser
      who | grep $nuser
      ;;
    "ENVIAR MENSAJE A UN USUARIO")
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