CP() {
  SRC=$1
  DST=$2
  echo "copy $SRC into $DST for backup"
  cp $SRC $DST
}
##################################
# bash_profile setting
##################################
do_bash_profile_setting=1
if [ ! -e ./bash_profile ];then
  echo "WARNING: bash_profile not found."
  do_bash_profile_setting=0
fi

if [ $do_bash_profile_setting -eq 1 ];then

  BASH_PROFILE_PATH="~/.bash_profile"
  if [ ! -e $BASH_PROFILE_PATH ];then
    touch $BASH_PROFILE_PATH
  fi
  
  cat bash_profile >> $BASH_PROFILE_PATH
fi

##################################
# git setting
##################################
do_gitconfig_setting=1
if [ ! -e ./gitconfig ];then
  echo "WARNING: gitconfig not found."
  do_gitconfig_setting=0
fi

if [ $do_gitconfig_setting -eq 1 ];then

  GITCONFIG_PATH="~/.gitconfig"
  if [ -e $GITCONFIG_PATH ];then
    CP $GITCONFIG_PATH ~/.gitconfig-bak
  fi
  
  cat gitconfig > $GITCONFIG_PATH
fi

##################################
# vim setting
##################################
do_vimrc_setting=1
if [ ! -e ./vimrc ];then
  echo "WARNING: vimrc not found."
  do_vimrc_setting=0
fi

if [ $do_vimrc_setting -eq 1 ];then

  VIMRC_PATH="~/.vimrc"
  if [ -e $VIMRC_PATH ];then
    CP $VIMRC_PATH ~/.vimrc-bak
  fi
  
  cat vimrc > $VIMRC_PATH
fi
