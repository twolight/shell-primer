echo "awk 更适合格式化文本，对文本进行较复杂格式处理"
echo "awk [选项参数] 'script' var=value file(s)"
echo "awk [选项参数] -f scriptfile var=value file(s)"

#算术函数
echo "1 1" | awk 'BEGIN{sinv=0;cosv=0;print "===================="} 
{sinv=sin($1);cosv=cos($1);printf "%-6f %-6f\r\n",sinv,cosv}
END{print "===================="}'

#分割字符转
echo "c,d,e,f,g" | awk '{split($0, array, ",");print array[1]}'

#字符串截取
echo "abcd efg" | awk '{print substr($1,3,3)}'

#字符串替换
echo "12345abcdefg" | awk '{gsub("[0-9]","x",$0);print $0}'

# 打印所有sh文件的大小
ls -l *.sh | awk '{sum=sum+$5} BEGIN{sum=0} END{print sum}'