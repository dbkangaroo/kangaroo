# Reference: https://www.ibm.com/developerworks/cn/linux/l-cn-linuxglb/index.html

# Internationalization(i18n) and Localization(l10n)
# generate .pot file
# ninja kangaroo-pot

# generate .po files
# ninja kangaroo-update-po

# locale validate
# LC_ALL=zh_CN kangaroo


i18n.gettext(meson.project_name(), args: ['--directory=' + meson.source_root(), '--from-code=UTF-8'])
