str="abcdefg"
echo ${str}
echo ${#str}

echo "string append ${str}"
echo "substring 0-3 ${str:0:3}"

expr "abcABC123ABCabc" : 'abc[A-Z]*.2'
expr "abcd" : "cd"
