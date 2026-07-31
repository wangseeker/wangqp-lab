# 代谢与衰老实验室网站

中山大学药学院（深圳）王巧平教授课题组官方网站，基于 [Greenelab Lab Website Template](https://github.com/greenelab/lab-website-template) 构建。

## 网站结构

| 路径 | 内容 |
|---|---|
| `index.md` | 首页：实验室简介、招募信息、最新动态 |
| `research/index.md` | 研究方向：肥胖 / 味觉 / 衰老 + 代表性论文 |
| `team/index.md` | 团队成员（PI、博士后、研究生、毕业生） |
| `contact/index.md` | 联系方式与地址 |
| `_members/` | 成员个人页（每个成员一个 Markdown 文件） |
| `_config.yaml` | 站点配置（标题、邮箱等） |

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

## 部署

推荐推送到 GitHub（`gh-pages` 分支或 Actions）或 Gitee Pages。详见用户说明。
