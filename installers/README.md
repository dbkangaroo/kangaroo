# Arch linux installer guide
## 安装指南
- 下载 kangaroo_0.23.1.200518_arch.tar.gz 到当前文件夹
- 输入`makepkg VERSION=0.23.1.200518`，生成 kangaroo_0.23.1.200518_x86_64.pkg.tar.gz
- 然后使用`pacman -U kangaroo_0.23.1.200518_x86_64.pkg.tar.gz`安装之
- 注意 MySQL 和 PostgreSQL 是可选依赖，需要自行安装（安装过程中有提示）

## Installation guide
- Download kangaroo_0.23.1.200518_arch.tar.gz to the current folder
- Enter `makepkg VERSION=0.23.1.200518` to generate kangaroo_0.23.1.200518_x86_64.pkg.tar.gz
- Then use `pacman -U kangaroo_0.23.1.200518_x86_64.pkg.tar.gz` to install it
- Note that libgda support for MySQL and PostgreSQL are optional dependencies and need to be installed by yourself (will prompt during installation)
