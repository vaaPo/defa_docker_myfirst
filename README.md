# Filename: README.md
#  LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
#  git remote add origin git@github.com:vaaPo/defa_docker_myfirst.git
#  git push -u origin master
# 
# touch local.txt
# docker build --rm -f "Dockerfile" -t 01-myfirst:latest .
# 
# docker run -it myfirst
## check end result in interactive shell with:

paavo@silber:~/defa/courseware/part1/01-myfirst$ docker run -it 01-myfirst:latest 
root@927f56b8e371:/mydir# ls -la
total 12
drwxr-xr-x 1 root root 4096 Jan  4 07:24 .
drwxr-xr-x 1 root root 4096 Jan  4 07:26 ..
-rw-r--r-- 1 root root    0 Jan  4 07:12 hello.txt
-rw-r--r-- 1 root root 1256 Oct 17 07:18 index.html
-rw-r--r-- 1 root root    0 Jan  4 07:24 local.txt
root@927f56b8e371:/mydir# exit
exit
paavo@silber:~/defa/courseware/part1/01-myfirst$ 