# generate an shellcodes from an assembled file will echo some cool info
CODESLEN=0
FAULT=false
SHELLCODE=""
for i in $(objdump -d $1 |grep "^ " |cut -f2); 
do echo -n '\\x'$i; 
CODESLEN=$((CODESLEN+1)); 
SHELLCODE="$SHELLCODE\\x$i"
if [ "$i" = "00" ]
then 
    FAULT=true
fi

done; echo
echo "[+] Shellcode length : "$CODESLEN
if [ "$FAULT" = true ]
then 
    echo "[-] \\x00 hexadecimal code detected, segmentation fault will occur!"
fi
echo $SHELLCODE > shellcode.txt
echo "[+] Wrote Shellcode to shellcode.txt"
