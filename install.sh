#!/bin/bash

# Minimum setup necessary to build new versions of twilio-php
# Author: Kevin Burke <kevin@twilio.com>

pear channel-discover pear.pirum-project.org
pear channel-discover twilio.github.com/pear
pear install XML_Serializer-0.20.2 PEAR_PackageFileManager_Plugins PEAR_PackageFileManager2
pear install pirum/Pirum
