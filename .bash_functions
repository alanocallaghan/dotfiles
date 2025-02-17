function clone_with_remotes {
  if [ $# -eq 0 ]; then
    echo "Not enough arguments supplied"
    exit 1
  fi
  REPO=$1
  if [ -n "$2" ]; then
    UPSTREAM="$2"
  else
    UPSTREAM="qupath"
  fi
  if [ -n "$3" ]; then
    ORIGIN="$3"
  else
    ORIGIN="alanocallaghan"
  fi
  echo $UPSTREAM
  echo "git@github.com:$UPSTREAM/$REPO.git"
  git clone git@github.com:$UPSTREAM/$REPO.git
  pushd $REPO
  git remote set-url origin git@github.com:$ORIGIN/$REPO.git
  git remote add upstream git@github.com:$UPSTREAM/$REPO.git
  git fetch origin && git fetch upstream
  popd
}
