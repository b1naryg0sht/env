CP() {
  SRC=$1
  DST=$2
  echo "copy $SRC into $DST for backup"
  cp $SRC $DST
}

#set -x
##################################
# bash_profile setting
##################################
do_bash_profile_setting=1
if [ ! -e ./bash_profile ];then
  echo "WARNING: bash_profile not found."
  do_bash_profile_setting=0
fi

if [ $do_bash_profile_setting -eq 1 ];then

  BASH_PROFILE_PATH="$HOME/.bash_profile"
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

  GITCONFIG_PATH="$HOME/.gitconfig"
  if [ -e $GITCONFIG_PATH ];then
		if [ ! -e $HOME/.gitconfig-bak ];then
			CP $GITCONFIG_PATH $HOME/.gitconfig-bak
		else
			rm -f $GITCONFIG_PATH
		fi
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

  VIMRC_PATH="$HOME/.vimrc"
  if [ -e $VIMRC_PATH ];then
	  if [ ! -e $HOME/.vimrc-bak ];then
		CP $VIMRC_PATH $HOME/.vimrc-bak
	  else
		rm -f $VIMRC_PATH
	  fi
  fi

  cat vimrc > $VIMRC_PATH
fi
