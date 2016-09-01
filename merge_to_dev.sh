if [ "$TRAVIS_BRANCH" != "master" ]; then 
    exit 0;
fi

export GIT_COMMITTER_EMAIL=daniel.mroczka@gmail.com
export GIT_COMMITTER_NAME=danielmroczka

//git remote add origin https://github.com/danielmroczka/github.git
git fetch 
git checkout --track origin/dev || exit
git merge "$TRAVIS_COMMIT" || exit
git push
