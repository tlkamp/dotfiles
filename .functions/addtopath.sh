function addtopath() {
  if ! echo $PATH | /usr/bin/egrep -q "(^|:)$1($|:)" ; then
    if [ "$2" = "after" ]; then
      PATH=$PATH:$1
    else
      PATH=$1:$PATH
    fi
  fi
}
