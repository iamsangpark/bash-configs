alias cors-disabled='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/Users/sang.park/dev/temp/cors-disabled-chorome" --disable-web-security --allow-running-insecure-content'
alias idea='open -na "IntelliJ IDEA.app" --args'

iterm-tab-title() {
    printf "\e]1;%s\a" "$*"
}

iterm-window-title() {
    printf "\e]2;%s\a" "$*"
}

iterm-set-titles() {
	printf "\e]0;%s\a" "$*"
}