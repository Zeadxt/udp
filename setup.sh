dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
url="https://raw.githubusercontent.com/Zeadxt/udp/main"
voc="https://raw.githubusercontent.com/Zeadxt/kzl/main"

export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"
export BOLD="\e[1m"

apt install lolcat -yy

start=$(date +%s)
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1
echo -e "[ ${tyblue}INFO${NC} ] Preparing the install file"

clear
echo ""
echo -e "               ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "               ${tyblue}         Please select a domain type below                 ${NC}"
echo -e "               ${tyblue}└──────────────────────────────────────────┘${NC}"
echo -e "               ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "               ${tyblue}           [ 1 ]  Enter your Domain                        ${NC}"
echo -e "               ${tyblue}           [ 2 ]  Use a random Domain                      ${NC}"
echo -e "               ${tyblue}└──────────────────────────────────────────┘${NC}"
read -p "   Please select numbers 1-2 or Any Button(Random) : " dns
echo ""
if [[ $dns == "1" ]]; then
echo -e  "               ${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e  "               ${tyblue}|              TERIMA KASIH                |${NC}"
echo -e  "               ${tyblue}|         SUDAH MENGGUNAKAN SCRIPT         |${NC}"
echo -e  "               ${tyblue}|                DARI SAYA                 |${NC}"
echo -e  "               ${tyblue}|            BY FREE TUNNEL               |${NC}"
echo -e  "               ${tyblue}└──────────────────────────────────────────┘${NC}"
echo " "
read -rp "Masukan domain kamu Disini : " -e dns
echo "$dns" > /root/domain
echo "$dns" > /etc/xray/domain
echo "$dns" > /etc/v2ray/domain
echo "IP=$dns" > /var/lib/ipvps.conf
echo ""
clear
elif [[ $dns == "2" ]]; then
wget https://raw.githubusercontent.com/Zeadxt/voc/main/ssh/cf.sh && chmod +x cf.sh && ./cf.sh
clear
else
echo -e "Random Subdomain/Domain is used"
wget https://raw.githubusercontent.com/Zeadxt/voc/main/ssh/cf.sh && chmod +x cf.sh && ./cf.sh
clear
fi

figlet -f 3d "installing ssh udp" | lolcat
echo "UDP SERVICE BY FREE TUNNELING PROJECT" | lolcat
echo -e "${GREEN}proses instalasi sedang berjalan..!!"
sleep 1
clear
echo -e "${GREEN} MENDOWNLOAD ASET..!!!"
wget -q -O /usr/bin/addudp "https://raw.githubusercontent.com/Zeadxt/udp/main/add.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Zeadxt/udp/main/menu.sh"
chmod 777 /usr/bin/addudp
chmod 777 /usr/bin/menu
clear

echo -e "${GREEN} MENDOWNLOAD CONFIG UDP"
sleep 1

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2" -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp 

echo -e "VPS AKAN REBOOT DALAH 5 DETIK'
sleep 2
echo -e "KAMU ASU"
sleep 1
echo -e "KONTOL BAPAK LU PATAH"
sleep 2
reboot


