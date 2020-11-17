PS3="Seleccione la opción deseada: "

opciones=(
    "VISUALIZAR HORA DEL SISTEMA" 
    "PATH O RUTA ACTUAL" 
    "CAMBIO DE PASSWORD"
    "MOSTRAR DISCO LIBRE"
    "MOSTRAR DISCO UTILIZADO"
    "VISUALIZAR PROCESOS ACTIVOS"
    "REGRESAR"
)

select opt in "${opciones[@]}"; do
  echo --$opt
  case $opt in
    "VISUALIZAR HORA DEL SISTEMA")
      date
      ;;
    "PATH O RUTA ACTUAL")
      pwd
      ;;
    "CAMBIO DE PASSWORD")
      read -p "Enter the first number: " n1
      read -p "Enter the second number: " n2
      echo "$n1 * $n2 = $(($n1*$n2))"
      ;;
    "MOSTRAR DISCO LIBRE")
      df -h
      ;;
    "MOSTRAR DISCO UTILIZADO")
      du -h
      ;;
    "VISUALIZAR PROCESOS ACTIVOS")
      ps
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