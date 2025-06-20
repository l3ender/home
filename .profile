export PS1="------------------------------------------------\n[$USER@$HOSTNAME] \w\n-> "

export SVN_EDITOR=vi
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export M2_HOME=$HOME/opt/apache-maven-3.9.4
export VSC_HOME="/Applications/Visual Studio Code.app/Contents/Resources/app"
export GO111MODULE="on"
# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
USER_PATH="$HOME/bin:$M2_HOME/bin:$VSC_HOME/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools"
export PATH="$USER_PATH:$(brew --prefix)/opt/python@3.12/libexec/bin:${PATH//\~/$HOME}"
export BASH_SILENCE_DEPRECATION_WARNING=1
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="%F %T: "
export HISTCONTROL="ignoreboth"
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES # https://stackoverflow.com/a/52230415/1880761
export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec
export DOTNET_CLI_TELEMETRY_OPTOUT=true

if [ -f ~/.profile-private ]; then
	. ~/.profile-private
fi


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
	if [[ $# -eq 2 ]]; then
		git clone "$@" && cc "$2"
	else
		git clone "$@" && cc $(sed 's/.*\/\(.*\)[.].*/\1/' <<< "$1")
	fi
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
