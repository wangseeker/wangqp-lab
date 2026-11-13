# 搜索引擎与 AI 收录操作指南

> 适用站点：https://wangseeker.github.io/wangqp-lab/
> 目标：Google、Bing（Copilot）、百度尽快收录；AI 检索（ChatGPT/Perplexity/Gemini/文心/Kimi）能引用。

## 一、先做这三步（只有站长能操作）

### 1. Google Search Console（3–14 天见效）
1. 打开 https://search.google.com/search-console
2. 添加资源 → 选「网址前缀」→ 填 `https://wangseeker.github.io/wangqp-lab/`
3. 验证方式选「HTML 标记」，复制 `content="..."` 里的值
4. 把值填到本仓库 `_config.yaml` 的 `verification.google`，推送后回到 GSC 点「验证」
5. 验证通过后：左侧「站点地图」提交 `sitemap.xml`；「网址检查」对首页、研究方向、成果、团队、英文首页逐个点「请求编入索引」

### 2. Bing Webmaster Tools（3–7 天；Copilot 用 Bing 索引）
1. 打开 https://www.bing.com/webmasters
2. 添加站点 → `https://wangseeker.github.io/wangqp-lab/`
3. 验证方式选「Meta 标记」，把 `content` 值填到 `_config.yaml` 的 `verification.bing`
4. 提交 sitemap；在「URL 提交」里提交核心页面（每天有配额）

### 3. 百度搜索资源平台（2–6 周，最慢）
1. 打开 https://ziyuan.baidu.com
2. 添加站点 → `https://wangseeker.github.io/wangqp-lab/`
3. 验证方式选「HTML 标签」，把 `content` 值填到 `_config.yaml` 的 `verification.baidu`
4. 提交 sitemap
5. 普通收录 → API 提交：获取 token 后运行：
   ```bash
   BAIDU_TOKEN=你的token ./tools/baidu-push.sh
   ```
   或在 GitHub Actions 里配置 `BAIDU_TOKEN` secret 后自动推送

> 三个平台的验证码填进 `_config.yaml` 后，`_includes/verification.html` 会自动输出对应 meta 标签，无需改模板。

## 二、为什么现在搜不到

- 站点较新，Google/Bing/百度都没有收录记录；`site:` 查询在 Bing 返回无关结果。
- 没有外链：搜索引擎没有“发现”这个站点的入口。
- 中山大学官网课题组页面（yxysz.sysu.edu.cn/wangqpgroup）已经收录并占据关键词，但内容较旧。
- GitHub Pages 的 `github.io` 子路径权重低于独立域名，百度收录尤其慢。

## 三、最有效的外链（按优先级）

1. **中山大学官网课题组页面加一条“最新主页 / English site”链接到本 GitHub 站**——这是权重最高的单条外链；如果官网停更，这条链接尤其关键。
2. Google Scholar 个人主页、ORCID、ResearchGate、LinkedIn 的 Website 字段填本网址。
3. 学院教师主页、合作实验室主页、会议报告简介、微信公众号文章里的“实验室主页”链接。
4. 论文的 Data/Code availability、Acknowledgements 中写实验室网址（如期刊允许）。

## 四、AI 检索优化（已完成的站内部分）

- 已新增 `llms.txt`，向 AI 爬虫提供实验室简介、核心页面与联系方式。
- `robots.txt` 明确允许 GPTBot、OAI-SearchBot、ChatGPT-User、PerplexityBot、ClaudeBot、Google-Extended、CCBot、Bingbot、Baiduspider、Bytespider。
- 结构化数据：WebSite / Organization / Person（PI）+ `sameAs` 指向官网课题组页面。
- 每页有独立 title、description、canonical、hreflang。

AI 检索仍然依赖“被 Google/Bing/百度收录 + 有权威站点提到你”。所以上面三条平台提交和外链是前提。

## 五、IndexNow 说明（Bing/Yandex 秒级推送）

IndexNow 要求 key 文件在**域名根目录**。当前站点在 `wangseeker.github.io/wangqp-lab/` 子路径，根目录属于 `wangseeker.github.io` 用户站，无法放置 key，因此 API 返回 403。两种解法：

1. **自定义域名**（推荐）：`wangqplab.org` 等，key 文件放根目录即可启用；脚本 `tools/indexnow.sh` 已就绪。
2. 暂不启用，改用 Bing 站长平台的 URL 提交。

## 六、自定义域名（强烈建议）

`github.io/...` 不利于品牌和搜索信任。建议购买 `wangqplab.org`（或 `.cn`）：

1. DNS 添加 CNAME 指向 `wangseeker.github.io`
2. 仓库根目录加 `CNAME` 文件，内容为域名
3. GitHub → Settings → Pages → Custom domain 填域名，勾选 HTTPS
4. 更新 `_config.yaml`：`url: https://新域名`，`baseurl: ""`
5. 重新提交三平台 sitemap；IndexNow 立即可用

## 七、时间预期

| 渠道 | 首次收录 | 稳定排名 |
|---|---|---|
| Bing | 3–7 天 | 2–4 周 |
| Google | 3–14 天 | 2–6 周 |
| 百度 | 2–6 周 | 1–3 个月 |
| AI 检索 | 跟随索引 | 数周至数月 |

搜索引擎不存在“提交后立刻第一”的开关；提交 + 外链 + 持续更新是把时间压到最短的组合。
