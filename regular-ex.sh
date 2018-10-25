
function regular(){
	str=$1
	regular=$2
	# echo -e $str | grep `[a-zA-Z0-9_]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+` 
	echo -e $str | grep $regular
}

#email 
regular xx@xxx.com [a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+



