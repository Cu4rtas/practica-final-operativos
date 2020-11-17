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
      read -p "Enter the first number: " n1
      read -p "Enter the second number: " n2
      echo "$n1 * $n2 = $(($n1*$n2))"
      ;;
    "ENVIAR MENSAJE A UN USUARIO")
      df -h
      ;;
    "REGRESAR")
        bash "practicaFinal.sh"
        exit
        ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done