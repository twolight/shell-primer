if [ $# != 1 ] || [ ! -d $1 ] ;then
    echo "usage apk-sign.sh directory"
    exit
fi



for item in `ls ${1%*/}/*.apk` ; do 
    echo $item; 
    aapt dump badging $item | grep "package"  ;
    directory=${item%.*}
    unzip -o $item -d $directory | grep "RSA" | sed "s/[[:space:]]//g";
    keytool -printcert -file `find ${directory} -name CERT.RSA` | grep -E "MD5|SHA1" | sed "s/[[:space:]]//g";
    rm -rf $directory
    echo -e "-----------------------------------------------------------------------------------------\r\n"; 
done;

