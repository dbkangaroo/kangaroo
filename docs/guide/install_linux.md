---
title: Install on Linux
lang: en-US
---

# Ubuntu
the follow install script assumption tha glibc / gtk+-3.0 / gdk-pixbuf-2.0 have installed by default.
``` bash
sudo apt install libgtk-3-0
sudo apt install libgee-0.8
sudo apt install libsoup2.4
sudo apt install libjson-glib-1.0
sudo apt install libgda-5.0-common
sudo apt install libgda-5.0-mysql
sudo apt install libgda-5.0-postgtes
sudo apt install libgtksourceview-4-0
```

# Fedaro
the follow install script assumption tha glibc / gtk+-3.0 / gdk-pixbuf-2.0 have installed by default.
``` bash
sudo dnf install gtk3 libgee json-glib libsoup
sudo dnf install libgda libgda-mysql libgda-postgres
sudo dnf install gtksourceview4
```


# RHEL/CentOS
the follow install script assumption tha glibc / gtk+-3.0 / gdk-pixbuf-2.0 have installed by default.
``` bash
sudo yum install libgee json-glib libsoup
sudo yum install libgda libgda-mysql libgda-postgres 
sudo yum install gtksourceview4
```


