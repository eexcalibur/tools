repository="CPS_trigger"
ME="feature-v1"

git_init()
{
	git init --bare $repository
}

git_branch()
{
	git checkout -b develop origin/develop
}

git_push()
{
	git push
	git pull
	git merge origin/develop
	git push

	git checkout develop
	git pull
	get merge $ME
	git push

	git checkout $ME
}

#if [ $# -e 0 ] && [ $# -g 1  ]; then
if [ $# -ne 1 ]; then
	echo "Plese enter the correct action!"
	exit 1
fi

case $1 in
	"init")
		git_init
		;;
	"branch")
		git_branch
		;;
	"push")
		git_push
		;;
	*)
		echo "Plese enter the correct action!"
		;;
esac

