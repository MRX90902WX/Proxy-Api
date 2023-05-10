#! /bin/bash

#Code: Demo-Hacks
#Telegram: @Demo593

clear
echo ""
echo "*/ Muy pronto un checkeador de proxy para sacar vivas"
echo ""
setterm -foreground red
figlet Proxy-Api
echo ""
setterm -foreground cyan
echo "               #Code --@Demo593----   "
echo ""
setterm -foreground white
echo "[▪︎]Crea un archivo txt donde guardara los proxys"
sleep 1
echo -n "Archivo ej(proxy-list.txt): "
read proxy
echo ""
echo "[▪︎]Guardando posibles proxy ..."
sleep 2
#API_FREE
curl -sSf "https://raw.githubusercontent.com/clarketm/proxy-list/master/proxy-list-raw.txt" > $proxy
echo ""
echo "> Guardado en $proxy"
echo ""
while :
do
#OPCIONAL
setterm -foreground yellow
echo "1)Continuar hasta la recopilación de info"
setterm -foreground cyan
echo "2)Cargar proxy US en formato json"
echo "3)Cargar proxy US en formato txt"
echo "4)Cargar proxy Aleatorio en formato json"
echo "5)Cargar proxy Aleatorio en formato txt"
echo "6)Api-info de un proxy"
echo "7) Salir"

echo ""
echo -n "OPCIÓN : "
read op
case $op in
1)
echo ""
echo "> Leyendo proxys ..."
sleep 1
setterm -foreground blue
echo ""
cat $proxy
echo ""
setterm -foreground white
echo "[▪︎]Escriba una ip proxy para sacar info"
echo -n "IP: "
read iproxy
echo ""
sleep 2
setterm -foreground blue
curl -sSf "http://ip-api.com/line/$iproxy"
exit
;;
3)
echo ""
setterm -foreground blue
curl -sSf "http://pubproxy.com/api/proxy?limit=2&format=txt&http=true&country=US&type=http"
exit
;;
4)
echo ""
setterm -foreground blue
curl -sSf "http://pubproxy.com/api/proxy?"
exit
;;
5)
echo ""
setterm -foreground blue
curl -sSf "http://pubproxy.com/api/proxy?limit=2&format=txt"
exit
;;
6)
echo ""
setterm -foreground white
echo "[▪︎]Escriba una ip proxy para sacar info"
echo -n "IP: "
read iproxy
echo ""
sleep 2
setterm -foreground blue
curl -sSf "http://ip-api.com/line/$iproxy"
exit
;;
7)
exit
esac
done
;;
