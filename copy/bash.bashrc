#begin_configure
alias ls="ls --color"
alias ll="ls -la"

# set variable identifying the filesystem you work in (used in the prompt below)
fs_mode=$(mount | sed -n -e "s/^\/dev\/root on \/ .*(\(r[w|o]\).*/\1/p")
 
alias ro='mount -o remount,ro / ; mount -o remount,ro /boot; fs_mode=$(mount | sed -n -e "s/^\/dev\/root on \/ .*(\(r[w|o]\).*/\1/p")'
alias rw='mount -o remount,rw / ; mount -o remount,rw /boot; fs_mode=$(mount | sed -n -e "s/^\/dev\/root on \/ .*(\(r[w|o]\).*/\1/p")'
 
# setup fancy prompt
export PS1='`exitStatus=$?;if [ $fs_mode = "ro" ];then echo "\[\033[01;32m\]\u@\h${fs_mode:+($fs_mode)}\[\033[00m\]";else echo "\[\033[01;31m\]\u@\h${fs_mode:+($fs_mode)}\[\033[00m\]";fi`:\[\033[01;34m\]\w\[\033[00m\]\$ '
#end_configure
