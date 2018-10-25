dir=`pwd`
if [ $# != 4 ];then
    echo "usage:sign-android.sh apk out sign alias"
    exit
fi

apk=$1
out=$2
sign=$3
alias=$4
jarsigner -verbose -keystore $sign -signedjar $out $apk $alias
