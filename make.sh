docker build --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy -t dolphin .

docker rm -f dolphin-init || :
docker run --name dolphin-init -e http_proxy=$http_proxy -e https_proxy=$https_proxy -it dolphin .
docker start dolphin-init
docker attach dolphin-init
docker commit dolphin-init dolphin:latest

