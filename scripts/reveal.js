// ============================================================
// 入场动画 — IntersectionObserver 滚动渐显
// 只为主要区块/卡片启用；尊重 prefers-reduced-motion
// ============================================================
(function () {
  var targets = document.querySelectorAll(
    'main > section, .card, .portrait, .feature, .post-excerpt-container'
  );
  if (!targets.length) return;
  if (!('IntersectionObserver' in window)) return;

  // 首屏内容立即显示，不等待观察
  function init() {
    var io = new IntersectionObserver(
      function (entries) {
        entries.forEach(function (entry) {
          if (entry.isIntersecting) {
            entry.target.classList.add('reveal-visible');
            io.unobserve(entry.target);
          }
        });
      },
      { threshold: 0.06, rootMargin: '0px 0px -40px 0px' }
    );
    targets.forEach(function (el) {
      el.classList.add('reveal');
      io.observe(el);
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
