#alias review='git push origin HEAD:refs/for/master'

LOCAL_BRANCH=HEAD
REMOTE_BRANCH=refs/for/master

function review() {
	echo "This will push $LOCAL_BRANCH to $REMOTE_BRANCH"
	echo "Hit enter to confirm [CTRL+C to abort]"
	read
	git push origin $LOCAL_BRANCH:$REMOTE_BRANCH
}

function merge() {
	if [ "$1" = "" ]
	then
		echo "Usage: merge [branch name]"
		return 1
	fi
	echo "This will merge [$1] to the current branch"
	echo "(no commit will be performed, and all changes will be squashed)"
	echo "Hit enter to confirm [CTRL+C to abort]"
	read
	git merge --no-commit --squash $1
}

function pull(){
	echo "This will pull from remote and rebase on that"
	echo "Hit enter to confirm [CTRL+C to abort]"
	read
	git pull --rebase origin master
}

alias duh='du -h --max-depth=1'
