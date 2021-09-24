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

# Chrome shortcut
alias chrome="open -na Google\ Chrome --args --new-window"
alias search="chrome $google"
alias insta="chrome $instagram"
alias manga="chrome $mangakakalot"
alias youtube="chrome $yt"
alias github="chrome $gith"
alias gmeet="chrome $meet"
