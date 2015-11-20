#/bin/bash
latest (){
  docker pull chamunks/lilypad-connect:1.7.10
}
stop_container (){
  docker stop lilypad-connect
}
delete_container (){
  docker rm -f lilypad-connect
}
run (){
  docker run -ti \
    -p 25565:25565 \
    -v /root/Lilypad-Connect/connect/connect.yml:/app/connect.yml \
    --restart=always \
    --name=lilypad-connect \
    chamunks/lilypad-connect:1.7.10
}

case $1 in
  up )
  echo "make sure to use CTRL+A then CTRL+B to exit the console"
  run
    ;;
  stop )
    stop_container
    ;;
  rm )
    delete_container
    ;;
  pull )
    latest
    ;;
  attach )
    docker attach lilypad-connect
    ;;
  upgrade )
    latest
    rm
    up
    ;;
  * )
  echo "Your options for this script are: up, stop, rm, pull, attach, upgrade."
    ;;
esac