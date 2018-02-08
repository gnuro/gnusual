val=$(yad --center --width=300 --height=100 --title "Root Control Panel" --image "/mnt/c/cspire.png" --buttons-layout=center --text "Select Data Source" --button="Live Database":1 --button="Import File":2 )   
ret=$?


if [[ $ret -eq 1 ]]; then #Enter Database Information
    DBTYPE=$(echo "MySql,Postgres,MangoDB,M$DB,other")
yad --title="Database Information" --text="Please Enter you Database Information:" \
--image="/usr/share/icons/phone.png" \
--form --date-format="%-d %B %Y" --separator="," --item-separator="," \
--field="IP or Hostname" \
--field="Username" \
--field="Password":RO \
--field="Certificate Date":DT \
--field="Database Type":CBE \
--field="Additional Query:":TXT \
    exit 0
    #Enter Database Functionaly At Later Date
    
fi

if [[ $ret -eq 2 ]]; then
DATA=`yad --file --multiple --width=600 --height=400`
for (( ;;))
do
cat $DATA >| DATA.txt
gnuplot gnuplot4.plt 
done

fi


#
#if NEXTWINDOW=1; then
#yad --button=gtk-print:0 --button=gtk-cancel:0 --height=300 --list --checklist --column=Buy --column=Item < options.list > /home/dwest/optionslist \
#--print-column=2 --separator= && yad --print --add-preview --filename=/home/dwest/optionslist 
#
#fi






