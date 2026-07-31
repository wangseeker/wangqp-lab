// ============================================================
// 邮箱防爬虫保护
// 真实邮箱 wangqp7@mail.sysu.edu.cn 以 charCode 混淆存储，
// 页面源码中不出现任何邮箱字符串；真人点击后 JS 还原生成 mailto 链接。
// ============================================================
(function () {
  function restoreEmail() {
    // wangqp7@mail.sysu.edu.cn 的 charCode 序列
    var code = [
      119, 97, 110, 103, 113, 112, 55,   // wangqp7
      64,                                  // @
      109, 97, 105, 108,                   // mail
      46,                                  // .
      115, 121, 115, 117,                  // sysu
      46,                                  // .
      101, 100, 117,                       // edu
      46,                                  // .
      99, 110                              // cn
    ];
    var email = String.fromCharCode.apply(null, code);
    var els = document.querySelectorAll('a[data-mail-protected]');
    for (var i = 0; i < els.length; i++) {
      var el = els[i];
      var label = el.getAttribute('data-mail-label') || 'mailbox';
      el.setAttribute('href', 'mailto:' + email);
      if (!el.querySelector('.icon')) {
        el.textContent = label;
      }
    }
  }
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', restoreEmail);
  } else {
    restoreEmail();
  }
})();
