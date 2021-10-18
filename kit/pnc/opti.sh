red='\033[1;31m'
rset='\033[0m'      
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
#coding section starts :)
clear 
echo ""
echo ""
echo -e "$grn  ＞＞＞＞＞＞＞＞＞＞＞$ylo [VERSION]$grn ＜＜＜＜＜＜＜＜＜＜＜$rset"
echo -e "$grn  ##                                                    ##"
echo -e "$grn  ##                                                    ##"
echo -e "$grn  ##$red      ➡ [1]$blue Metasploit  for  4.4 and 6.0 version$grn    ##"
echo -e "$grn  ##$red      ➡ [2]$blue Metasploit  for  7.0 and  above$grn         ##"
echo -e "$grn  ##                                                    ##"
echo -e "$grn  ##$red   [NOTE:]$cyan METASPLOIT SIZE IS MORE THAN$red 500$cyan MB$grn      ##"
echo -e "$grn  ##                                                    ##"
echo -e "$grn  ＞＞＞＞＞＞＞＞＞＞＞$ylo [SELECT]$grn ＜＜＜＜＜＜＜＜＜＜＜＜$rset"
echo " "
echo -e "$cyan               [[[$ylo Select any option$cyan]]]$rset"
echo " "
read n
case "$n" in
1)echo " "
clear
echo " "
echo " "
echo -e "$red      You are going to$grn Install for 4.4 and 6.0$rset"
echo " "
echo -e "$grn              Press$ylo ENTER$red to continue$rset"
echo " "
read e1
clear
echo " "
echo -e "$ylo    To$red EXIT$ylo the process click$red 'e'$ylo or to$grn continue$ylo click on$grn 'c'$rset" 
read e2
if [[ $e2 = 'e' ]] ; then
clear
echo ""
echo ""
echo -e "$red         Are you sure? Press$grn ENTER$red to exit$rset"
read e3
cd
cd h-sploit
bash h-sploit.sh
elif [[ $e2 = 'c' ]] ; then
clear
echo ""
echo ""
echo -e "$red         Are you sure? Press$grn ENTER$red to continue$rset"
read e4
cd 
cd h-sploit
cd kit
cd hmv
bash hml.sh
echo " "
echo " "
fi
cd 
cd h-sploit
bash h-sploit.sh
;;
2)echo " "
clear
echo " "
echo " "
echo -e "$red     You are going to$grn Install for 7.0 and above$rset"
echo " "
echo -e "$grn             Press$ylo ENTER$red to continue$rset"
echo " "
read e5
clear
echo " "
echo -e "$ylo    To$red EXIT$ylo the process click$red 'e'$ylo or to$grn continue$ylo click on$grn 'c'$rset" 
read e6
if [[ $e6 = 'e' ]] ; then
clear
echo " "
echo " "
echo -e "$red            Are you sure? Press$grn ENTER$red to exit$rset"
read e7
echo ""
echo ""
cd 
cd h-sploit
bash h-sploit.sh
echo ""
echo ""
elif [[ $e6 = 'c' ]] ; then
clear
echo " "
echo " "
echo -e "$red         Are you sure? Press$grn ENTER$red to continue$rset"
read e8
echo ""
echo ""
cd 
cd h-sploit
cd kit
cd hmv
bash hml.sh
echo " "
fi
cd 
cd h-sploit
bash h-sploit.sh
exit
esac;