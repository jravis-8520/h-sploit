#colour section
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
ylo='\033[1;33m'
#script coding starts
clear
cd h-sploit
cd kit
cd mbp
echo " "
echo " "
clear
echo -e "$ylo  To$red EXIT$ylo the process click$red 'e'$ylo or to$grn continue$ylo click on$grn 'c'$rset" 
read e1
if [[ $e1 = 'e' ]] ; then
clear
echo " "
echo " "
echo -e "$red          Are you sure? Press$grn ENTER$red to exit$rset"
read e2
cd 
cd h-sploit
bash h-sploit.sh
clear
elif [[ $e1 = 'c' ]] ; then
clear
echo " "
echo " "
echo -e "$red         Are you sure? Press$grn ENTER$red to continue$rset"
read e3 
cd 
cd h-sploit
cd kit
cd pnc
bash pro.sh
echo " "
echo " "
fi
cd 
cd h-sploit
bash h-sploit.sh