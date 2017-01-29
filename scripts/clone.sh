#! /bin/sh

cd /root/Opentotum.wiki
git pull
for f in *.md; do pandoc $f -f markdown_github -t dokuwiki -o "${f::-3}".txt; done
mv -f *.txt /root/output