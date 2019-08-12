function check_workspace() {
  if [[ -d .terraform ]]; then
    if [[ -f .terraform/environment ]]; then
      TE=$(cat .terraform/environment);
    else
      TE=default
    fi
    echo "(wksp: $TE)"
  fi
}
