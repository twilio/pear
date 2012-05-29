#!/bin/sh

VERSION="$1";
GZIPPED_REPO="Services_Twilio-$VERSION.tgz"

pushd ../twilio-php;
    php package.php > package.xml;
    pear package;
    cp $GZIPPED_REPO ../pear;
popd;

pirum add . $GZIPPED_REPO;
rm -f $GZIPPED_REPO;

git add .;
git ci -m "Bump PEAR library version to $VERSION"

echo 'New version added to the repository. Push to Github to update PEAR'
