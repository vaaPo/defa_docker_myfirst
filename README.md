# Filename: README.md0
# TUTORIAL STUFF FOR VAAPO
This is just testing and learning docker.

# GIT commands for existing git repo
git remote add origin git@github.com:vaaPo/defa_docker_myfirst.git
git push -u origin master
# Setup, build and run
touch local.txt
docker build --rm -f "Dockerfile" -t 01-myfirst:latest .
docker run -it 01-myfirst:latest 
