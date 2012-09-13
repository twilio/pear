# Bumping versions

Twilio follows the versioning guidelines [here](http://apr.apache.org/versioning.html).

When you are bumping the version number, here is a checklist to follow:

* Run the unit tests and the Twilio integration tests to check for
  incompatibilities.

* Merge the branch.

* Add a summary of the changes to the CHANGES file in the home directory.

* If necessary, add the contributor to the AUTHORS file.

* Update the version number in the following places:

    * The user agent in Services/Twilio.php
    * The Docs configuration file docs/conf.py
    * The docs homepage, docs/index.rst
    * In package.php, and add a short change note

* Commit the above changes

* Tag a new Github release with the version number, and also with the `latest`
  tag.

        git tag -d latest
        git tag latest
        git tag X.Y.Z

* Run the `bump_version.sh` script in this folder.

        sh bump_version.sh 3.7.2

    This will create a new package.xml file, create a tarball and a gzipped
    tarball, and commit both to this repository automatically.

