#! /bin/sh

# Generate and update POTFILES.in list

set -e

echo "Generate and update POTFILES.in list..."
PROJECT_HOME=`dirname "$0"`
cd "$PROJECT_HOME/.."

# enforce consistent sort order and date format
export LC_ALL=C

(
 # echo "data/kangaroo.appdata.xml.in"

 find src \( -name '*.vala' -o -name '*.vala.in' \) -type f -print0 | xargs -0 egrep -l '[^/]*$' | sort

) | grep -vx -f ./po/POTFILES.skip > ./po/POTFILES.in


# find ../share/extensions -name '*.py' -type f -print0 | xargs -0 egrep -l '(\<[QNC]?_|gettext) *\(' | grep -vx -f POTFILES.skip | sort > POTFILES.py.in
# find ../share/extensions -name '*.inx' -type f -print | grep -vx -f POTFILES.skip | sort > POTFILES.inx.in
# find ../share/ui -name '*.glade' -type f -print | grep -vx -f POTFILES.skip | sort > POTFILES.ui.in
