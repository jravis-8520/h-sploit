#option1
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
#coding section starts :)
clear
echo " "
echo " "
echo -e "$red          You are going to$grn ABOUT$red script$rset"
echo " "
echo -e "$grn            Press$ylo ENTER$grn to continue$rset"
echo " "
read e1
clear
echo " "
echo " "
echo -e "$ylo  To$red EXIT$ylo the process click$red 'e'$ylo or to$grn continue$ylo click on$grn 'c'$rset" 
read e2
if [[ $e2 = 'e' ]] ; then
clear
echo ""
echo ""
echo -e "$red          Are you sure? Press$grn ENTER$red to exit$rset"
read e3
cd 
cd h-sploit
bash h-sploit.sh
echo ""
echo ""
elif [[ $e2 = 'c' ]] ; then
clear
echo ""
echo ""
echo -e "$red         Are you sure? Press$grn ENTER$red to continue$rset"
read e4
cd 
cd h-sploit
cd kit
cd abt
bash about.sh
echo " "
echo " "
fi
cd 
cd h-sploit
bash h-sploit.sh