	date
	cd /srv/dkr/mysql519 
	
    source /home/albe/shc/21env.sh
	
    source ./comparedb-pd3.sh

    # see if db is running..

    mysql  --host=10.62.225.50 --port=3306 -u user_gifshow_rw -pEfJKXZTc^KuP7eV)y(fH -e "show databases;";
      (($? != 0)) && { printf '%s\n' "Problem: Command exited with non-zero"; exit 1; } # Test exit code of command above and exit if non-zero

    read -rsp $'Wait xx Seconds or Press escape to continue...\n' -t 511 -d $'\e'
	
    date
	
    rm ./sysdata/in-out/compr/*
	rsync -av ./sysdata/in-out_1/comp-pd3-2020-06-09-baseline/ ./sysdata/in-out/compr
	
    source ./comparedb-c5.sh
	date
