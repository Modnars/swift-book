module.exports = {
  title : 'Swift 编程语言',
  author : 'modnarshen',
  lang : 'zh-cn',
  description : 'Swift 编程语言',
  plugins :
          [
            '-lunr', '-search', '-sharing', '-fontsettings', 'search-pro',
            'code', 'back-to-top-button', 'cuav-chapters', 'theme-canyon'
          ],
  pluginsConfig : {
    'theme-canyon' : {
      'search-placeholder' : '🔍  输入搜索内容…'  // 搜索框提示信息
    }
  }
};
