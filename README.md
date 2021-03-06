# TUTORIAL STUFF FOR VAAPO
This is just testing and learning docker. 

Ultimate source of information: https://devopswithdocker.com/part1/

Good music to listen while doing this: https://open.spotify.com/track/7dgGHQnSI3fM403IP3Ii0B?si=_dH89SZJTrCsivYvndzvJw

# Setup, build and run
```console
touch local.txt
docker build --rm -f "Dockerfile" -t youtube-dl .
docker run youtube-dl
docker run youtube-dl https://imgur.com/JY5tHqr 
[Imgur] JY5tHqr: Downloading webpage
[download] Destination: Imgur-JY5tHqr.mp4
[download] 100% of 190.20KiB in 00:0021MiB/s ETA 00:000

```
# Enter interactive shell terminal and start "heilu shellissä"
```console
docker run -it 01-myfirst:latest 
root@b57d3a483892:/mydir# touch manual.txt
root@b57d3a483892:/mydir# ls -la
total 12
drwxr-xr-x 1 root root 4096 Jan  4 08:35 .
drwxr-xr-x 1 root root 4096 Jan  4 08:35 ..
-rw-r--r-- 1 root root    0 Jan  4 07:12 hello.txt
-rw-r--r-- 1 root root 1256 Oct 17 07:18 index.html
-rw-r--r-- 1 root root    0 Jan  4 07:22 local.txt
-rw-r--r-- 1 root root    0 Jan  4 08:35 manual.txt
root@b57d3a483892:/mydir# exit
```
# Then with container id visible as hostname in prompt 
```console
docker diff b57d3a483892
C /mydir
A /mydir/manual.txt
C /root
A /root/.bash_history
```
# Then commit those changes in container to new image (myfirst+changes=newimage) 
```console
docker commit b57d3a483892 myfirst-pluschanges 
```
# And run the new image + ls -al command non-interactively
```console
docker run myfirst-pluschanges ls -l 
total 4
-rw-r--r-- 1 root root    0 Jan  4 07:12 hello.txt
-rw-r--r-- 1 root root 1256 Oct 17 07:18 index.html
-rw-r--r-- 1 root root    0 Jan  4 07:22 local.txt
-rw-r--r-- 1 root root    0 Jan  4 08:35 manual.txt
```

# GIT commands for existing git repo
```console
git remote add origin git@github.com:vaaPo/defa_docker_myfirst.git
git push -u origin master
```
## copy container files
```console
docker container ls -a --last 3 
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS               NAMES
8dd873743171        youtube-dl          "/usr/local/bin/yout…"   6 minutes ago       Exited (0) 6 minutes ago                        strange_lamport
8225261005ce        05228273f8ce        "https://imgur.com/J…"   9 minutes ago       Created                                         hopeful_hellman
ef6aa493a3cc        05228273f8ce        "/usr/local/bin/yout…"   10 minutes ago      Exited (2) 10 minutes ago                       friendly_fermat
docker cp "8dd873743171://mydir/Imgur-JY5tHqr.mp4" . 
``` 

## BIND Mount for the run
To bind mount current pwd directory to /mydir in container 
```console
docker run -v $(pwd):/mydir youtube-dl https://imgur.com/JY5tHqr
## for suprise for the existing container the download was done earlier :)
[Imgur] JY5tHqr: Downloading webpage
[download] Imgur-JY5tHqr.mp4 has already been downloaded
[download] 100% of 190.20KiB
```
## push to docker-hub
```console
docker tag youtube-dl vaapo/youtube-dl
docker login
docker push vaapo/youtube-dl
```


