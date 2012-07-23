# Bumping versions

Twilio follows the versioning guidelines [here](http://apr.apache.org/versioning.html).

When you are bumping the version number, here is a checklist to follow:

* Run the unit tests and the Twilio integration tests to check for
  incompatibilities.

* Add a summary of the changes to the CHANGES file in the home directory.

* If necessary, add the contributor to the AUTHORS file.

* Bump the version in the user agent in Services/Twilio.php

* Update the release number in docs/conf.py

* Update the version number in docs/index.rst

* Tag a new Github release with the version number, and also with the `latest`
  tag.


* Update the version number in package.php, add a short change note, and then
  run: 

        php package.php > package.xml

        pear package

    Then copy over the tgz ball to the folder containing
    github.com/twilio/pear, and run:

        pirum add . Services_Twilio-X.Y.Z.tgz

    You may need to install some dependencies to get this to run properly.
