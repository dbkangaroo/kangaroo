Name: kangaroo
Version: 1.0.0
Release: 1
License: Unknown/not set
Summary: SQL client and admin tool for popular databases for Linux.

BuildRequires: gcc
BuildRequires: vala
BuildRequires: posix-devel
BuildRequires: glibc-headers
BuildRequires: glib2-devel
BuildRequires: gio-devel
BuildRequires: gio-unix-devel
BuildRequires: pango-devel
BuildRequires: gtk3-devel
BuildRequires: cairo-devel
BuildRequires: gdk-pixbuf2-devel
BuildRequires: libgee-devel
BuildRequires: libsoup-devel
BuildRequires: json-glib-devel
BuildRequires: gtksourceview-4-devel
BuildRequires: openssl-devel
BuildRequires: libssh2-devel
BuildRequires: libxml2-devel
BuildRequires: libgda-devel
BuildRequires: libsecret-devel
BuildRequires: cmake
BuildRequires: gettext
BuildRequires: pkgconf-pkg-config
BuildRequires: make
BuildRequires: intltool
BuildRequires: gtk-update-icon-cache
BuildRequires: glib2

Requires: posix
Requires: glibc
Requires: glib2
Requires: gio
Requires: gio-unix
Requires: pango
Requires: gtk3
Requires: atk
Requires: cairo-gobject
Requires: cairo
Requires: gdk-pixbuf2
Requires: libxml2
Requires: libgda
Requires: libgee
Requires: libssh2
Requires: openssl
Requires: libsoup
Requires: json-glib
Requires: libsecret
Requires: gtksourceview-4
Requires: libgda-mysql
Requires: libgda-postgres

%description
SQL client and admin tool for popular databases for Linux.
.
Kangaroo is a sql client and admin tool for popular databases for Linux.
.

%files
*

%build
mkdir -p ${RPM_BUILD_DIR}
cd ${RPM_BUILD_DIR}; cmake -DCMAKE_INSTALL_PREFIX=/usr -DGSETTINGS_COMPILE=OFF -DICON_UPDATE=OFF ../..
make -C ${RPM_BUILD_DIR}

%install
make install -C ${RPM_BUILD_DIR} DESTDIR=%{buildroot}

%post
glib-compile-schemas /usr/share/glib-2.0/schemas

%postun
glib-compile-schemas /usr/share/glib-2.0/schemas

%clean
rm -rf %{buildroot}
