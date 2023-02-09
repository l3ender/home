export PS1="------------------------------------------------\n[$USER@$HOSTNAME] \w\n-> "

export SVN_EDITOR=vi
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export M2_HOME=$HOME/opt/apache-maven-3.6.3
export VSC_HOME="/Applications/Visual Studio Code.app/Contents/Resources/app"
export GO111MODULE="on"
export PATH=$HOME/bin:$M2_HOME/bin:$VSC_HOME/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools:${PATH//\~/$HOME}
export BASH_SILENCE_DEPRECATION_WARNING=1
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="%F %T: "
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES # https://stackoverflow.com/a/52230415/1880761
export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec

if [ -f ~/.profile-private ]; then
	. ~/.profile-private
fi

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# see https://github.com/jenv/jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

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

function gc() {
	git commit "$@";
}

function gca() {
	git commit --amend "$@";
}

function gcm() {
	git commit -m "$@";
}

function gco() {
	git checkout "$@";
}

function gd() {
	git diff "$@";
}

function gclone() {
	git clone "$@" && cc $(sed 's/.*\/\(.*\)[.].*/\1/' <<< "$1")
}

function gr() {
	git restore "$@"
}

function grs() {
	git restore --staged "$@"
}

function grsa() {
	git restore --staged "$@" && gr "$@"
}

function gl() {
	git log "$@"
}

function ll() {
	ls -la "$@";
}

function cc() {
	cd "$1" && ll;
}

function va() {
	env_name="venv"
	if [[ -n "$1" ]] ; then
		env_name="$1"
	fi
	. "$env_name/bin/activate"
}

alias vd="deactivate"
