if [ "$TRAVIS_BRANCH" != "master" ]; then 
    exit 0;
fi

export GIT_COMMITTER_EMAIL=daniel.mroczka@gmail.com
export GIT_COMMITTER_NAME=danielmroczka
export GH_TOKEN=ebb70d5af5c8e8f2c6d2e61c92d6731acc70acb5

git fetch 
git config --global push.default simple
git checkout -b origin/dev || exit
git merge "$TRAVIS_COMMIT" || exit
git push --set-upstream origin origin/dev
