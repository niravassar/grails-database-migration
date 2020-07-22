git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global credential.helper "store --file=~/.git-credentials"
echo "https://$GH_TOKEN:@github.com" > ~/.git-credentials
git clone https://${GH_TOKEN}@github.com/${GIT_REPO_SLUG}.git -b gh-pages gh-pages --single-branch > /dev/null

