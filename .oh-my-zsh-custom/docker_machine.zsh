if [ $(uname -s) = "Darwin" ]; then
  if [ "$(docker-machine ls -q default | wc -l)" -eq 0 ]; then
    read "create?default machine not found. Create it? (y/n) "

    case $create in
      y|Y)
        docker-machine create -d virtualbox \
          --virtualbox-memory "8192" \
          --virtualbox-cpu-count "$(gnproc)" \
          --virtualbox-disk-size "131072" \
          default
        ;;
    esac
  fi

  if [ "$(docker-machine status default)" != "Running" ]; then
    docker-machine start default
  fi

  eval $(docker-machine env default)

  export MACHINE_NATIVE_SSH=1
fi
