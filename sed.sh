#字符串替换
echo "c,d,e,f,g" | sed 's/c/h/g'

#数据搜寻
echo -e "c++ \njava\nc" | sed -n '/java/ p'
echo -e "c++ \njava\nc" | sed -n '/java/,/c$/ p'
#svn 查询某个用户的提交
#svn log -v -l 5 | sed -n '/username/,/[-+]$/ p'

#数据搜寻并删除
echo -e "c++ \njava\nc" | sed -n '/java/ d'



