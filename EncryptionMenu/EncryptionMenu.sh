#! /bin/sudo bash
Input=0

if [ "$(id -u)" -ne 0 ]; then
        echo 'GoT Ro0t?' >&2
        exit 1
fi

function catch {
	clear
	echo "Cya Bitch!"
	exit
}

trap catch 2

while [ $Input -eq 0 ]
do
	clear
	echo "--------------------------------------------"
	echo "                  ENCRYPT0R                 "
	echo "--------------------------------------------"
	echo ""
	echo " 1.  Encrypt File"
	echo " 2.  Encrypt String"
	echo " 3.  Decrypt File"
	echo " 4.  Run Encrypted File" 
	echo " 99. Exit"
	echo ""
	read -p "3NCRYPT~# " Input
	clear

	while [ $Input -eq 1 ]
	do
		echo "--------------------------------------------"
		echo "                3NCRYPT F1L3                "
		echo "--------------------------------------------"
		echo ""
		echo "Please Enter Absolute Path: "
		read -p "3NCRYPT~# " IFile
		clear

		echo "--------------------------------------------"
		echo "                3NCRYPT F1L3                "
		echo "--------------------------------------------"
		echo ""
		echo "Encrypting..."
		cat $IFile | xxd -ps -c 200 | tr -d '\n' > ./OutFile
		sleep 5
		clear

		echo "--------------------------------------------"
   	    echo "                 3NCRYPT F1L3               "
		echo "--------------------------------------------"
		echo ""
		echo "Done!"
		echo "File name is OutFile!"
		sleep 5
		Input=0
	done

	while [ $Input -eq 2 ]
	do
		echo "--------------------------------------------"
   	    echo "                3NCRYPT 5TR1NG              "
		echo "--------------------------------------------"
		echo ""
		echo "Would you like to output to a file (y/n)"
		read -p "3NCRYPT~# " Output

		if [ "$Output" = "y" ]
		then
			clear
			echo "--------------------------------------------"
   	    	echo "                3NCRYPT 5TR1NG              "
			echo "--------------------------------------------"
			echo ""
			echo "Enter String To Encrypt: "
			read -p "3NCRYPT~# " IString

			clear
			echo "--------------------------------------------"
   	    	echo "                3NCRYPT 5TR1NG              "
			echo "--------------------------------------------"
			echo ""
			echo "Encrypting..."
			echo $IString | xxd -ps -c 200 | tr -d '\n' > ./StringOut
			sleep 5
			clear

			echo "--------------------------------------------"
   	    	echo "                3NCRYPT 5TR1NG              "
			echo "--------------------------------------------"
			echo ""
			echo "Done!"
			echo "File name is StringOut!"
			sleep 5
			Input=0
		fi

		if [ "$Output" = "n" ]
		then
			clear
			echo "--------------------------------------------"
   	    	echo "                3NCRYPT 5TR1NG              "
			echo "--------------------------------------------"
			echo ""
			echo "Enter String To Encrypt: "
			read -p "3NCRYPT~# " IString
			clear

			echo "--------------------------------------------"
   	    	echo "                3NCRYPT 5TR1NG              "
			echo "--------------------------------------------"
			echo ""
			echo -n "Encrypting."
			sleep 2
			echo -n "."
			sleep 2
			echo -n "."
			sleep 2
			clear

			echo "--------------------------------------------"
   	    	echo "                3NCRYPT 5TR1NG              "
			echo "--------------------------------------------"
			echo ""
			echo "Done!"
			echo $IString | xxd -ps -c 200
			sleep 10
			Input=0
		fi
	done

	while [ $Input -eq 3 ]
	do
		echo "--------------------------------------------"
   	    echo "                 D3CRYPT F1L3               "
		echo "--------------------------------------------"
		echo ""
		echo "Input Absolute Path To File: "
		read -p "3NCRYPT~# " IFile
		clear

		echo "--------------------------------------------"
   	    echo "                 D3CRYPT F1L3               "
		echo "--------------------------------------------"
		echo ""
		echo "Enter Absolute Path And Name For Output: "
		read -p "3NCRYPT~# " OFile
		clear

		echo "--------------------------------------------"
   	    echo "                 D3CRYPT F1L3               "
		echo "--------------------------------------------"
		echo ""
		echo -n "ENCRYPTING."
		sleep 2
		echo -n "."
		sleep 2
		echo -n "."
		sleep 2
		cat $IFile | xxd -ps -r > $OFile 
		clear 

		echo "--------------------------------------------"
   	    echo "                 D3CRYPT F1L3               "
		echo "--------------------------------------------"
		echo ""
		echo "Done!"
		echo -n "Output is: "
		echo $OFile
		sleep 10
		Input=0
	done

	while [ $Input -eq 4 ]
	do



		echo "--------------------------------------------"
   	    echo "                RUN D3CRYPT10N              "
		echo "--------------------------------------------"
		echo ""
		echo "Enter Absolute Path Of File: "
		read -p "3NCRYPT~# " IFile
		clear

		echo "--------------------------------------------"
   	    echo "                RUN D3CRYPT10N              "
		echo "--------------------------------------------"
		echo ""
		echo -n "Decrypting."
		sleep 2
		echo -n "."
		sleep 2
		echo -n "."
		sleep 2
		clear

		echo "--------------------------------------------"
   	    echo "                RUN D3CRYPT10N              "
		echo "--------------------------------------------"
		echo ""
		echo "Done!"
		sleep 5
		echo "Running now..."
		sleep 5

		cat $IFile | xxd -ps -r > /tmp/GH0STENC && chmod +x /tmp/GH0STENC && /tmp/GH0STENC
		sleep 5
		clear
		rm /tmp/GH0STENC
		Input=0
	done

	while [ $Input -eq 99 ]
	do
		echo "Cya Bitch!"
		exit 2
	done
done
