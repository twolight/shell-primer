for item in `ls *.apk` ; do 
    echo $item; 
    aapt dump badging $item | grep "package"  ;
    unzip -o $item -d ${item%.*} | grep "RSA" | sed "s/[[:space:]]//g";
    keytool -printcert -file `find ${item%.*} -name *.RSA` | grep -E "MD5|SHA1" | sed "s/[[:space:]]//g";
    echo -e "-----------------------------------------------------------------------------------------\r\n"; 
done;