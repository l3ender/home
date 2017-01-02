export PS1="------------------------------------------------\n[$USER@$HOSTNAME] \w\n-> "

export SVN_EDITOR=vi
export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/users/ross/opt/apache-maven-3.3.9
export MYSQL_HOME=/Users/ross/opt/mysql-5.7.10-osx10.10-x86_64
export ANT_HOME=/Users/ross/opt/apache-ant-1.9.6
export PATH=$PATH:/Users/ross/bin:/Users/ross/Library/Developer/Xamarin/android-sdk-macosx/platform-tools:$M2_HOME/bin:$ANT_HOME/bin:/Users/ross/Workspaces/GitHub/ybodb/bin

alias gs="git status"
alias restartvb="sudo /Library/Application\ Support/VirtualBox/LaunchDaemons/VirtualBoxStartup.sh restart"
alias cls="clear"

function baudns() {
	read -n1 -r -p "Enter Ctrl+A followed by Ctrl+\ to when finished to console. Press any key to continue" key
	screen /dev/tty.KeySerial1 9600 *N1
}

function bauddp() {
	read -n1 -r -p "Enter Ctrl+A followed by Ctrl+\ to when finished to console. Press any key to continue" key
	screen /dev/tty.usbserial 9600 *N1
}

function gb() {
	git branch "$@";
}

function ga() {
	git add "$@";
}

function gcm() {
	git commit -m "$1";
}

function gco() {
	git checkout "$@";
}

function ll() {
	ls -la "$@";
}

function cc() {
	cd "$1";
	ll;
}

