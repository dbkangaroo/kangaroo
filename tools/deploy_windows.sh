#!/usr/bin/env sh

#
# Copyright(C) 2018-2019 taozuhong(https://github.com/taozuhong)
# Important:
#   These functions are a part of the Kangaroo tool suite;
#   copyright taozuhong. 2018, 2019.  All rights reserved.
#
# Author:    taozuhong
# Created:   1.8.2019
#
SOURCEDIR="$( cd "$(dirname "$0")/../" ; pwd -P )"
TARGETDIR="${SOURCEDIR}/build/windows"
VERSION="$1.$(date +%y%m%d)"
export VERSION
echo "VERSION=$VERSION"

# check target directory exist and make it
echo -n "Check and make target directory......"
if [ ! -d "$TARGETDIR" ]; then
  mkdir $TARGETDIR
  mkdir "${TARGETDIR}/bin/"
  mkdir "${TARGETDIR}/lib/"
  mkdir -p "${TARGETDIR}/share/glib-2.0/schemas"
  mkdir "${TARGETDIR}/share/doc"
  mkdir "${TARGETDIR}/share/themes"
  mkdir "${TARGETDIR}/etc/"
else 
  if [ ! -d "${TARGETDIR}/bin" ]; then
    mkdir "${TARGETDIR}/bin/"
  fi

  if [ ! -d "${TARGETDIR}/lib" ]; then
    mkdir "${TARGETDIR}/lib/"
  fi

  if [ ! -d "${TARGETDIR}/share" ]; then
    mkdir -p "${TARGETDIR}/share/glib-2.0/schemas"
    mkdir "${TARGETDIR}/share/"
    mkdir "${TARGETDIR}/share/doc"
    mkdir "${TARGETDIR}/share/themes"
  fi

  if [ ! -d "${TARGETDIR}/etc" ]; then
    mkdir "${TARGETDIR}/etc/"
  fi
fi
echo "[done]"

# copy app dependency library to target dir
echo -n "Copy app dependency library......"
ldd "${SOURCEDIR}/build/src/kangaroo.exe" | grep "$MSYSTEM_PREFIX\/bin\/.*dll" -o | xargs -I{} cp -f "{}" "${TARGETDIR}/bin/"
ldd $MSYSTEM_PREFIX/bin/libjson-glib-1.0-0.dll | grep "$MSYSTEM_PREFIX\/bin\/.*dll" -o | xargs -I{} cp -f "{}" "${TARGETDIR}/bin/"
ldd $MSYSTEM_PREFIX/bin/libsoup-2.4-1.dll | grep "$MSYSTEM_PREFIX\/bin\/.*dll" -o | xargs -I{} cp -f "{}" "${TARGETDIR}/bin/"
ldd $MSYSTEM_PREFIX/bin/libgtksourceview-4-0.dll | grep "$MSYSTEM_PREFIX\/bin\/.*dll" -o | xargs -I{} cp -f "{}" "${TARGETDIR}/bin/"

cp -f "${SOURCEDIR}/build/src/kangaroo.exe" "${TARGETDIR}/bin/"
cp -f "${SOURCEDIR}/data/assets/kangaroo.ico" "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/librsvg-2-2.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libgthread-2.0-0.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libcroco-0.6-3.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libtasn1-6.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libproxy-1.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libp11-kit-0.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libnettle-7.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libhogweed-5.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libgnutls-30.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libgmp-10.dll "${TARGETDIR}/bin/"
echo "[done]"

# copy GDBus/Helper and dependencies files
echo -n "Copy GDBus/Helper and dependencies......"
cp -f $MSYSTEM_PREFIX/bin/gdbus.exe "${TARGETDIR}/bin/"
ldd $MSYSTEM_PREFIX/bin/gdbus.exe | grep "$MSYSTEM_PREFIX\/bin\/.*dll" -o | xargs -I{} cp -f "{}" "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/gspawn-win64-helper.exe "${TARGETDIR}/bin/"
ldd $MSYSTEM_PREFIX/bin/gspawn-win64-helper.exe | grep "$MSYSTEM_PREFIX\/bin\/.*dll" -o | xargs -I{} cp -f "{}" "${TARGETDIR}/bin/"
echo "[done]"

# libgda providers required library(MySQL/PostgreSQL/JDBC/...)
echo -n "Copy database client library for libgda......"
cp -f $MSYSTEM_PREFIX/bin/libpq.dll "${TARGETDIR}/bin/"
cp -f $MSYSTEM_PREFIX/bin/libmariadb.dll "${TARGETDIR}/bin/"
ldd $MSYSTEM_PREFIX/bin/libpq.dll | grep "$MSYSTEM_PREFIX\/bin\/.*dll" -o | xargs -I{} cp -f "{}" "${TARGETDIR}/bin/"
ldd $MSYSTEM_PREFIX/bin/libmariadb.dll | grep "$MSYSTEM_PREFIX\/bin\/.*dll" -o | xargs -I{} cp -f "{}" "${TARGETDIR}/bin/"
if [ -d "${MSYSTEM_PREFIX}/lib/mariadb" ]; then
  cp -rf "${MSYSTEM_PREFIX}/lib/mariadb" "${TARGETDIR}/lib"
fi
ln -s "${TARGETDIR}/bin/libmariadb.dll" "${TARGETDIR}/bin/mariadb.dll"
echo "[done]"

# copy GTK runtime dependencies resource
echo -n "Copy GTK runtime resource......"
cp -rf $MSYSTEM_PREFIX/lib/gdk-pixbuf-2.0 "${TARGETDIR}/lib/"
cp -rf $MSYSTEM_PREFIX/lib/libgda-5.0 "${TARGETDIR}/lib/"
cp -rf $MSYSTEM_PREFIX/lib/gio "${TARGETDIR}/lib/"
cp -rf $MSYSTEM_PREFIX/etc/gtk-3.0 "${TARGETDIR}/etc/"
cp -rf $MSYSTEM_PREFIX/share/icons "${TARGETDIR}/share/"
cp -rf $MSYSTEM_PREFIX/share/locale "${TARGETDIR}/share/"
cp -rf $MSYSTEM_PREFIX/share/gtksourceview-4 "${TARGETDIR}/share/"
glib-compile-schemas $MSYSTEM_PREFIX/share/glib-2.0/schemas
cp -f $MSYSTEM_PREFIX/share/glib-2.0/schemas/gschema* "${TARGETDIR}/share/glib-2.0/schemas"
cp -rf $MSYSTEM_PREFIX/share/themes/Default "${TARGETDIR}/share/themes/"
cp -rf $MSYSTEM_PREFIX/share/themes/MS-Windows "${TARGETDIR}/share/themes/"
find "${TARGETDIR}/lib" -type f -path '*.dll.a' -exec rm '{}' \;
echo "[done]"

# download license file: LGPL-3.0
echo -n "Downloading the remote license file......"
if [ ! -f "${TARGETDIR}/share/doc/lgpl-3.0.txt" ]; then
  curl "https://www.gnu.org/licenses/lgpl-3.0.txt" -o "${TARGETDIR}/share/doc/lgpl-3.0.txt"
  if [ $? -eq 0 ]; then
    echo "[done]"
  else
    echo "[failed]"
  fi
else
  echo "[done]"
fi

# make windows installer(exe)
echo -n "make windows installer......"
makensis.exe "${SOURCEDIR}/tools/installer_windows.nsi"
if [ $? -eq 0 ]; then
  echo "[done]"
else
  echo "[failed]"
fi

# make windows portable(7z)
echo -n "make windows portable......"
7z.exe a -r "${SOURCEDIR}/build/kangaroo_${VERSION}_${PROCESSOR_ARCHITECTURE}.7z" "${SOURCEDIR}/build/windows/*"
if [ $? -eq 0 ]; then
  echo "[done]"
  else
  echo "[failed]"
fi