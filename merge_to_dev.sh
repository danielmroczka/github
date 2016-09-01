if [ "$TRAVIS_BRANCH" != "master" ]; then 
    exit 0;
fi

export GIT_COMMITTER_EMAIL=daniel.mroczka@gmail.com
export GIT_COMMITTER_NAME=danielmroczka

git fetch 
git checkout -b origin/dev || exit
git merge "$TRAVIS_COMMIT" || exit
git push
