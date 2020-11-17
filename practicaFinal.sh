PS3="Seleccione la opción deseada: "

opciones=("COMANDOS GENERALES" "USUARIOS" "SISTEMA DE ARCHIVOS" "TERMINAR")

select opt in "${opciones[@]}"; do
  echo --$opt
  case $opt in
    "COMANDOS GENERALES")
      bash "comandos_generales.sh"
      exit
      ;;
    "USUARIOS")
      bash "usuarios.sh"
      exit
      ;;
    "SISTEMA DE ARCHIVOS")
      bash "sistema_archivos.sh"
      exit
      ;;
    "TERMINAR")
        break
        ;;
    *) 
      echo "Opción Invalida $REPLY"
      ;;
  esac
done