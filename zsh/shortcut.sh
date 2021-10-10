#####################################################
#													#
#				Perosnal shortcut					#
#													#
#####################################################

# Reduce to some key strock to open programming file
work() {
	cd ~/Documents/projects/;
	tmux;
}

study() {
	cd ~/Documents/projects/Web_Dev_Training/;
	tmux;
}

dotfolder() {
	cd ~/dotfiles/;
	tmux;
}

# URL variable
instagram="instagram.com/direct/inbox"
mangakakalot="https://mangakakalot.com/bookmark"
yt="youtube.com"
google="https://www.google.com/"
gith="https://github.com/chriztaka1997"
meet="https://meet.google.com/"
roll="https://beta.crunchyroll.com/history"
chris="https://mail.google.com/mail/u/0/#inbox"
iman="https://mail.google.com/mail/u/1/#inbox"
usc="https://mail.google.com/mail/u/2/#inbox"

# Chrome shortcut
alias chrome="open -na Google\ Chrome --args --new-window"
alias search="chrome $google"
alias insta="chrome $instagram"
alias manga="chrome $mangakakalot"
alias youtube="chrome $yt"
alias github="chrome $gith"
alias gmeet="chrome $meet"
alias crunch="chrome $roll"
alias default_email="chrome $chris"
alias important_email="chrome $iman"
alias scholl_email="chrome $usc"

# Application shortcut
alias vscode="open -a Visual\ Studio\ Code"
