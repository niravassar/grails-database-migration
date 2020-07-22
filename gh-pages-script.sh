git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global credential.helper "store --file=~/.git-credentials"
echo "https://$GH_TOKEN:@github.com" > ~/.git-credentials
git clone https://${GH_TOKEN}@github.com/${GIT_REPO_SLUG}.git -b gh-pages gh-pages --single-branch > /dev/null
cd gh-pages
mkdir -p snapshot
cp -r ../build/docs/. ./snapshot/
git add snapshot/*
git commit -a -m "Updating docs"
# DONT RUN -- git push origin HEAD
cd ..
rm -rf gh-pages
