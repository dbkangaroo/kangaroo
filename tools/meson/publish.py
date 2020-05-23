#!/usr/bin/env python3

# For building a portable application package, the script perform these actions:
# 1. copy schema and icon files to the folder
# 2. copy executable file to the folder
# 3. ...

import logging
from os import environ, path, system
from subprocess import call

prefix = environ.get('MESON_INSTALL_PREFIX', '/usr/local')
datadir = path.join(prefix, 'share')
destdir = environ.get('DESTDIR', '')

# Package managers set this so we don't need to run
if not destdir:
    logging.addLevelName( logging.WARNING, "\033[1;31m%s\033[1;0m" % logging.getLevelName(logging.WARNING))
    logging.addLevelName( logging.ERROR, "\033[1;41m%s\033[1;0m" % logging.getLevelName(logging.ERROR))

    print('Updating icon cache...')
    if (0 == system('which gtk-update-icon-cache')):
        call(['gtk-update-icon-cache', '-qtf', path.join(datadir, 'icons', 'hicolor')])
    else:
        logging.error('Command not found: gtk-update-icon-cache')

    print('Updating desktop database...')
    if (0 == system('which update-desktop-database')):
        call(['update-desktop-database', '-q', path.join(datadir, 'applications')])
    else:
        logging.error('Command not found: update-desktop-database')

    print('Compiling GSettings schemas...')
    if (0 == system('which glib-compile-schemas')):
        call(['glib-compile-schemas', path.join(datadir, 'glib-2.0', 'schemas')])
    else:
        logging.error('Command not found: glib-compile-schemas')

