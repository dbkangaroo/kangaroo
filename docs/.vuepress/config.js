module.exports = {
  base: '/kangaroo/',
  locales: {
    '/': {
      lang: 'English',
      title: 'Kangaroo',
      description: 'a database management tool built in GTK and Vala for everyone',
    },
  },
  head: [
    ['link', { rel: 'icon', href: '/kangaroo.png' }]
  ],
  theme: '@vuepress/vue',
  themeConfig: {
    repo: 'dbkangaroo/kangaroo',
    editLinks: true,
    locales: {
      '/': {
        label: 'English',
        selectText: 'Languages',
        editLinkText: 'Edit this page on GitHub',
        lastUpdated: 'Last Updated',
        nav: [
          {
            text: 'New Feature',
            link: 'https://github.com/dbkangaroo/kangaroo/issues/new?assignees=&labels=&template=feature_request.md&title='
          },
          {
            text: 'Report bug',
            link: 'https://github.com/dbkangaroo/kangaroo/issues/new?assignees=&labels=&template=bug_report.md&title='
          },
        ],
        sidebar: 'auto',
      },
    }
  }
}
