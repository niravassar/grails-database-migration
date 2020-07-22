cd gh-pages
mkdir -p snapshot
cp -r ../build/docs/. ./snapshot/
git add snapshot/*
git commit -a -m "Updating docs"
# DONT RUN -- git push origin HEAD
cd ..
rm -rf gh-pages
