cd gh-pages
git rm -rf latest/
mkdir -p latest
cp -r ../build/docs/. ./latest/
git add latest/*
version="8.1.1" # eg: v3.0.1
version=${version:1} # 3.0.1
majorVersion=${version:0:4} # 3.0.
majorVersion="${majorVersion}x" # 3.0.x
mkdir -p "$version"
cp -r ../build/docs/. "./$version/"
git add "$version/*"
git rm -rf "$majorVersion"
mkdir -p "$majorVersion"
cp -r ../build/docs/. "./$majorVersion/"
git add "$majorVersion/*"
ls -al
