alias ll=`ls -al`
alias rmf=`rm -f`
alias rmrf=`rm -rf`

tarz() {
  FILE=$1
  if [ z$FILE = z ];then
    echo "tarz file null"
    return 1
  fi
  tar -zcvf ${FILE}.tar.gz ${FILE} 
}

export tarz

alias untarz=`tar -zxvf`
alias chmodx=`chmod u+x`

grepc() {
  DIR=$1
  PATTERN=$2
  if [ z$DIR = z ];then
    echo "grep target dir null"
    return 1
  fi
  grep -rn --include=*.{c,cpp,cc} $PATTERN $DIR
}
export grepc
