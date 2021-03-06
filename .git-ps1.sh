RESET="\033[0m"
BLACK="\033[30m"
BLACKBOLD="\033[30;1m"
RED="\033[31m"
REDBOLD="\033[31;1m"
GREEN="\033[32m"
GREENBOLD="\033[32;1m"
YELLOW="\033[33m"
YELLOWBOLD="\033[33;1m"
PURPLE="\033[34m"
PURPLEBOLD="\033[34;1m"
PINK="\033[35m"
PINKBOLD="\033[35;1m"
BLUE="\033[36m"
BLUEBOLD="\033[36;1m"
WHITE="\033[37m"
WHITEBOLD="\033[37;1m"

function git_color {
	local git_status="$(git status 2> /dev/null)"

	if [[ $git_status =~ "not staged for commit" ]]; then
		echo -e $REDBOLD
	else if [[ $git_status =~ "Changed but not updated" ]]; then
		echo -e $REDBOLD
	else if [[ $git_status =~ "Changes to be committed" ]]; then
		echo -e $REDBOLD
	else if [[ $git_status =~ "Untracked files" ]]; then
		echo -e $REDBOLD
	else if [[ $git_status =~ "Your branch is ahead of" ]]; then
		echo -e $PINK
	else if [[ $git_status =~ "nothing to commit" ]]; then
		echo -e $GREENBOLD
	else
		echo -e $RESET
	fi fi fi fi fi fi
}

export PS1="[\[$YELLOWBOLD\]\u\[$RESET\]@\[$RESET\]\$(scutil --get ComputerName) \[$PURPLEBOLD\]\w\[$RESET\]]"
export PS1="$PS1\[\$(git_color)\]"
export PS1="$PS1\$(__git_ps1 ' (%s)')\[$RESET\]\$ "
