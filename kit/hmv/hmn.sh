red='\033[1;31m'
rset='\033[0m'      
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
clear
center() {
  termwidth=$(stty size | cut -d" " -f2)
  padding="$(printf '%0.1s' ={1..500})"
  printf '%*.*s %s %*.*s\n' 0 "$(((termwidth-2-${#1})/2))" "$padding" "$1" 0 "$(((termwidth-1-${#1})/2))" "$padding"
}
echo -e "$grn"
center "H-SPLOIT INSTALLER"
msf="6.0.27"
mob=$(uname -o)
arc=$(dpkg --print-architecture)
str=$(du -hs)
krn=$(uname -s)
ip=$(curl -s https://api.ipify.org)
AVL=`df -h /storage/emulated | awk '{ print $4 }' | tail -1`
echo -e "
	╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮
	┃    ______________________________________________    ┃
	┃    ┃$blue STORAGE$grn = $red"$AVL"$grn               ┃               ┃   ┃
	┃    ┃$blue ARCHITECTURE$grn = $red"$arc"$grn          ┃$pink THANK$blue YOU$ylo FOR$grn ┃   ┃
	┃    ┃$blue OS$grn = $red"$mob"$grn                ┃   $cyan USING $grn     ┃   ┃
	┃    ┃$blue KERNEL$grn = $red"$krn"$grn              ┃ $red   H-SPLOIT $grn  ┃   ┃
	┃    ┃$blue IPV4$grn = $red"$ip"$grn         ┃               ┃   ┃
	┃    ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾    ┃
	┃        -------------------------------------         ┃
	┃        $grn|$grn $ylo CREATED BY :$red HET GANDHIH         $grn|$grn         ┃
	┃        $grn|$grn $ylo FOLLLOW:$red github.com/het751       $grn|$grn         ┃
	┃        -------------------------------------$grn         ┃
	┃                                                      ┃
	┃        $cyan METASPLOIT REQUIRES$red 1GB$cyan STORAGE $grn             ┃
	┃        $cyan AND$red 500MB$cyan DATA $red(V.$msf)$grn                    ┃
	┃        $cyan INSTALLATION MAY TAKE ($red 40 MINUTES$cyan )$grn         ┃
	┃                                                      ┃
	╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯
"
sleep 5.0
if [ -d $HOME/metasploit-framework ];
then
center "CHEKING OLD METASPLOIT"
echo -e "\e[34mREMOVING METASPLOIT.....WAIT\e[0m"
find . -type d -name "metasploit-*" -exec rm -rf "{}" \; >/dev/null 2>&1
sleep 4.0
echo -e "\e[34mREMOVED METASPLOIT SUCCESSFULLY.....[\e[92m✓\e[34m]\e[0m"
sleep 4.0
else
echo
fi
if [[ $arc = "arm" ]];
then
echo -e "\033[92m"
center "INSTALLING REQUIREED PACKAGES"
echo -e "\e[34mPACKAGES BEING INSTALLED WAIT....\e[0m"
apt remove -y ruby >/dev/null 2>&1
apt install -y libiconv zlib autoconf bison clang coreutils curl findutils git apr apr-util libffi libgmp libpcap postgresql readline libsqlite openssl libtool libxml2 libxslt ncurses pkg-config wget make libgrpc termux-tools ncurses-utils ncurses unzip zip tar termux-elf-cleaner > /dev/null 2>&1
echo -e "\e[34mPACKAGES INSTALLED SUCCESSFULLY....[\e[92m✓\e[34m]\e[0m"
sleep 3.0
echo -e "\033[92m"
center "INSTALLING  METASPLOIT"
echo -e "\e[34mINSTALLING METASPLOIT....\e[0m"
cd $HOME
ln -sf $PREFIX/include/libxml2/libxml $PREFIX/include/
loc='/data/data/com.termux/files/home'
ver='6.0.27'
cd $loc
apt-mark unhold ruby >/dev/null 2>&1
curl -LO https://github.com/rapid7/metasploit-framework/archive/$ver.tar.gz >/dev/null 2>&1
cd $loc
tar -xf $ver.tar.gz >/dev/null 2>&1
mv $loc/metasploit-framework-$ver $loc/metasploit-framework >/dev/null 2>&1
cd $loc
cd
cd h-splot
cd kit
cd rb
cd arm
cp ruby.deb $loc >/dev/null 2>&1
cd $loc
apt install -y ./ruby.deb >/dev/null 2>&1
apt-mark hold ruby >/dev/null 2>&1
cd $loc/metasploit-framework 
bundle config build.nokogiri --use-system-libraries >/dev/null 2>&1
bundle update >/dev/null 2>&1
elif [[ $arc = "aarch64" ]];
then
center "INSTALLING REQUIREED PACKAGES"
echo -e "\e[34mPACKAGES BEING INSTALLED WAIT....\e[0m"
apt remove -y ruby >/dev/null 2>&1
apt install -y libiconv zlib autoconf bison clang coreutils curl findutils git apr apr-util libffi libgmp libpcap postgresql readline libsqlite openssl libtool libxml2 libxslt ncurses pkg-config wget make libgrpc termux-tools ncurses-utils ncurses unzip zip tar termux-elf-cleaner > /dev/null 2>&1
echo -e "\e[34mPACKAGES INSTALLED SUCCESSFULLY....[\e[92m✓\e[34m]\e[0m"
sleep 3.0
echo -e "\033[92m"
center "INSTALLING  METASPLOIT"
echo -e "\e[34mINSTALLING METASPLOIT....\e[0m"
cd $HOME
ln -sf $PREFIX/include/libxml2/libxml $PREFIX/include/
loc='/data/data/com.termux/files/home'
ver='6.0.27'
cd $loc
apt-mark unhold ruby >/dev/null 2>&1
curl -LO https://github.com/rapid7/metasploit-framework/archive/$ver.tar.gz >/dev/null 2>&1
cd $loc
tar -xf $ver.tar.gz >/dev/null 2>&1
mv $loc/metasploit-framework-$ver $loc/metasploit-framework >/dev/null 2>&1
cd $loc
cd
cd h-sploit
cd kit
cd rb
cd aarch64
cp ruby.deb $loc >/dev/null 2>&1
cd $loc
apt install -y ./ruby.deb >/dev/null 2>&1
apt-mark hold ruby >/dev/null 2>&1
cd $loc/metasploit-framework 
bundle config build.nokogiri --use-system-libraries >/dev/null 2>&1
bundle update >/dev/null 2>&1
else
echo
fi
git clone https://github.com/noob-hackers/bcp >/dev/null 2>&1
wget https://github.com/termux/termux-packages/files/2912002/fix-ruby-bigdecimal.sh.txt >/dev/null 2>&1
bash fix-ruby-bigdecimal.sh.txt >/dev/null 2>&1
cd $loc
mkdir -p $PREFIX/var/lib/postgresql >/dev/null 2>&1
initdb $PREFIX/var/lib/postgresql  >/dev/null 2>&1
echo -e "\e[34mMETASPLOIT \e[92m$ver\e[34m INSTALLED SUCCESSFULLY....[\e[92m✓\e[34m]\e[92m"
sleep 3.0
center "COMPLETING ALL PROCESS"
cd $loc
echo -e "\e[34mCOMPLETING WAIT.....\e[0m"
rm $ver.tar.gz >/dev/null 2>&1
rm ruby.deb >/dev/null 2>&1
echo -e "\e[34mCOMPLETED SUCCESSFULLY....[\e[92m✓\e[34m]\e[92m"
sleep 3.0
center "STARTING METASPLOIT"
echo -e "\e[34mBOOTING UP WAIT.....\e[0m"
echo -e "\e[34mTO START METASPLOIT TYPE (./msfconsole) INSIDE METASPLOIT FRAMEWORK\e[0m"
sleep 8.0
cd $loc/metasploit-framework
clear
./msfconsole