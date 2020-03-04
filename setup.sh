#!/usr/bin/env bash
#!/bin/bash

rd='\e[91m' #Red
bl='\e[34m' #Blue
yl='\e[33m' #Yellow
wt='\e[97m' #White
mg='\e[35m' #Magenta
cy='\e[36m' #cyan
gr='\e[32m' #green
gy='\e[90m' #gray

export bgreen=$'\e[1;92m'
export bblue=$'\e[1;94m'
export bwhite=$'\e[1;97m'
export bcyan=$'\e[1;96m'
export byellow=$'\e[1;96m'
export endc=$'\e[0m'

root() {
	if [[ $EUID != 0 ]]; then
		echo -e "${rd}\n=[ Please run this script with [ ${bgreen}Root${rd} ] Access  "
		echo -ne "${yl}=[ Click ENTER To Continue "
		read -r  continue
			sleep 1
		exit 1

	fi
}

animation() {
	nyawa=$!
	local i sp n
	sp='/-\|'
	n=${#sp}
	printf ''
	while [ -d /proc/$nyawa ] ; do
		printf "%s\b" "${sp:i++%n:1}"
	done
}
resize -s 36 55 >> /dev/null 2>&1
clear
dimata() {

echo -e $bl"\tWWW##=======*$wt--$bl==$wt--$rd******************** "
sleep 0.1
echo -e $bl"\tW#===*=*=**=*$wt.-$bl**$wt-.$rd+******************* "
sleep 0.1
echo -e "\t$bl@====*=*=**=*$wt.-$bl*=+$wt.:$rd******************* "
sleep 0.1
echo -e "\t$bl#=======*****$wt..$bl*=*$wt-.:$rd****************** "
sleep 0.1
echo -e "\t$bl#===========*$wt..$bl****$wt-.-$rd***************** "
sleep 0.1
echo -e "\t$bl#============$wt..$bl*****$wt:..-$rd*************** "
sleep 0.1
echo -e "\t$bl#============$wt..$bl=====*$wt*-..:$rd************* "
sleep 0.1
echo -e "\t$bl#============$wt..$bl=======*$wt*..:$rd************ "
sleep 0.1
echo -e "\t$bl#===*$wt:....+==..$bl========$wt==-.$rd+*********** "
sleep 0.1
echo -e "\t$bl#==$wt-........:..$bl========$wt==:.$rd+*********** "
sleep 0.1
echo -e "\t$bl#=$wt:............$bl=======$wt==*.$rd-************ "
sleep 0.1
echo -e "\t$bl#=$wt:............$bl======$wt==+.$rd-************* "
sleep 0.1
echo -e "\t$bl#==$wt........$bl.-$wt..$bl=====$wt=+..$rd*************** "
sleep 0.1
echo -e "\t$bl#===$wt+-....:$bl==$wt..$bl===$wt+..-$rd***************** "
sleep 0.1
echo -e "\t$bl#============$wt..:..:$rd*******************= "
sleep 0.1
echo -e "\t$bl#====**$wt+:---:+*===$rd=================#@WW "
sleep 0.1
echo -e "\t($gr c$rd )$gr 2020 Ghibrother.inc$rd############## "
sleep 0.1
echo -e "\t $yl[$rd † $yl]$rd::$yl[ Dimata IT Solutions ]$rd::$yl[$rd † $yl]"


}

sortcut() {
(  place=$(pwd)
  echo "cd $place" >> /bin/dimatait
  echo "bash itsupport" >> /bin/dimatait
  chmod +x /bin/dimatait
  sleep 2
) & animation
}
root
dimata
echo -e "\n${bgreen}==> Running Setup Configuration."
sleep 1
echo -e "$endc -> Checking file."
sleep 1
echo -e "$endc -> Reconfigure file."
sleep 1
echo -ne "$endc -> Making Sortcut file in  /bin. "
sortcut
echo -e "\n\n${bgreen}==> Just Type ${endc}dimatait${bgreen} To running the Tools."
sleep 2
