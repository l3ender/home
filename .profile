export PS1="------------------------------------------------\n[$USER@$HOSTNAME] \w\n-> "

export SVN_EDITOR=vi
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=~/Library/Android/sdk
export M2_HOME=~/opt/apache-maven-3.6.3
export ANT_HOME=~/opt/apache-ant-1.9.7
export VSC_HOME="/Applications/Visual Studio Code.app/Contents/Resources/app"
export GRPCURL_HOME=~/opt/grpcurl_1.5.0_osx_x86_64
export PATH=~/bin:$M2_HOME/bin:$ANT_HOME/bin:$VSC_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:~/go/bin:$GRPCURL_HOME:$PATH
export BASH_SILENCE_DEPRECATION_WARNING=1
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="%F %T: "
if [ -f ~/.profile-private ]; then
	. ~/.profile-private
fi

alias gs="git status"
alias cls="clear"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

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

function gd() {
	git diff "$@";
}

function ll() {
	ls -la "$@";
}

function cc() {
	cd "$1";
	ll;
}

