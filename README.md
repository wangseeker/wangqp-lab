# 王巧平代谢与衰老实验室网站

中山大学药学院王巧平教授课题组官方网站。

## 网站结构

| 路径                  | 内容                        |
| ------------------- | ------------------------- |
| `index.md`          | 首页：实验室简介、招募信息、最新动态        |
| `research/index.md` | 研究方向：肥胖 / 衰老 + 代表性论文      |
| `team/index.md`     | 团队成员（PI、博士后、研究生、毕业生）      |
| `contact/index.md`  | 联系方式与地址                   |
| `en/`               | 英文版页面（与中文页一一对应，URL 为 `/en/…`） |
| `_data/members_en.yaml` | 英文版团队成员姓名与身份            |
| `_members/`         | 成员个人页（每个成员一个 Markdown 文件） |
| `_config.yaml`      | 站点配置（标题、邮箱、英文站名等）         |

## 本地预览

```bash
bundle install        # 首次安装依赖
bundle exec jekyll serve
```

浏览器打开 http://localhost:4000

## 内容更新指南

- **成员信息**：编辑 `_members/` 下对应文件，或新增一个成员文件（front matter 包含 `name`、`image`、`role`、`affiliation`）
- **研究方向 / 论文**：编辑 `research/index.md`
- **新闻动态**：编辑 `index.md` 的"最新动态"列表
- **联系方式**：编辑 `contact/index.md` 与 `_config.yaml`

## 中英文双语

- 中文页在根目录，英文页在 `en/` 下；URL 分别为 `/xxx/` 与 `/en/xxx/`。
- 页面顶部自动显示「EN / 中文」切换按钮。
- 中英文页通过 front matter 的 `alt_url` 互相指定对方地址；新增页面时两边都要写。
- 英文页 front matter 必须写 `lang: en`，否则不会出现在英文导航中。
- 英文站名与简介在 `_config.yaml` 的 `title-en` / `subtitle-en` / `description-en`。

## 部署

推荐推送到 GitHub（`gh-pages` 分支或 Actions）或 Gitee Pages。详见用户说明。
