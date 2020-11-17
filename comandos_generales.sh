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
      passwd
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
      echo "Opción Invalida $REPLY"
      ;;
  esac
done