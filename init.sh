# ===============================================
# ~/.bash
# Author: D. Nathan Dillon (nate@natedillon.com)
# ===============================================


# Temporarily save the old values so we can restore them after execution
SOURCE_TEMP=$SOURCE
DIR_TEMP=$DIR

SOURCE="${BASH_SOURCE[0]}"
# Go through all symlinks to find the ultimate location of the source file
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
# Get an absolute path to the directory that contains this file
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"


source $DIR/scripts/variables.sh
source $DIR/scripts/virtualenv.sh
source $DIR/scripts/prompt.sh
source $DIR/scripts/alias.sh


# Restore old values
SOURCE=$SOURCE_TEMP
DIR=$DIR_TEMP
