# Filename: README.md
# TUTORIAL STUFF FOR VAAPO
This is just testing and learning docker.

# GIT commands for existing git repo
```console
git remote add origin git@github.com:vaaPo/defa_docker_myfirst.git
git push -u origin master
```
# Setup, build and run
```console
touch local.txt
docker build --rm -f "Dockerfile" -t 01-myfirst:latest .
docker run -it 01-myfirst:latest 
```
