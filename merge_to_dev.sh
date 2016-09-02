if [ "$TRAVIS_BRANCH" != "master" ]; then 
    exit 0;
fi

export GIT_COMMITTER_EMAIL=daniel.mroczka@gmail.com
export GIT_COMMITTER_NAME=danielmroczka

git config credential.helper "store --file=.git/credentials" 
echo "https://${GH_TOKEN}:@github.com" > .git/credentials

git fetch 
git config --global push.default simple
git checkout -b origin/dev || exit
git merge "$TRAVIS_COMMIT" || exit
git push --set-upstream origin origin/dev
