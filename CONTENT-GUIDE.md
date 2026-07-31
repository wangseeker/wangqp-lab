# 网站内容更新指南

> 代谢与衰老实验室网站 · 非技术向操作手册
> 所有内容都是 Markdown 文本文件，用普通文本编辑器就能改。

---

## 一、准备工作

1. 用编辑器打开项目文件夹：`/Users/kevinwang/.reasonix/vault/WangQPLab_page`
   - 推荐安装 **VS Code**（免费，微软官网下载），或直接用 Mac 自带的「文本编辑」
   - 用「文本编辑」时注意：格式菜单 → 制作纯文本，避免保存成 .rtf
2. 本指南涉及的文件，都在项目根目录（或 `_members/`、`news/` 等子目录）

## 二、页面 ↔ 文件对照表

| 网站页面 | 编辑哪个文件 |
|---|---|
| 首页（简介、加入我们、研究方向卡片） | `index.md` |
| 研究方向 + 代表论文 | `research/index.md` |
| 团队成员页 | `team/index.md` |
| 成员个人页（每人一个） | `_members/` 文件夹里，如 `wang-qiaoping.md` |
| 最新动态 | `news/index.md` |
| 联系我们 | `contact/index.md` |
| 站点标题、副标题、邮箱 | `_config.yaml` |
| 图片（logo、成员照片等） | `images/` 文件夹 |

## 三、常见操作（照抄改数字即可）

### 1. 新增一条最新动态

打开 `news/index.md`，**复制任意一行**，粘贴，改日期和标题、链接：

```markdown
- **2025/12/23** [Diabetologia | 中山大学王巧平团队破解糖尿病新机制！SEC16B基因被发现是调控血糖的关键"开关"](https://yxysz.sysu.edu.cn/wangqpgroup/zh-hans/article/65)
```

- `**2025/12/23**` = 日期（加粗显示）
- `[标题](链接)` = 方括号里是显示的标题，圆括号里是点击跳转的网址

### 2. 新增一名成员

1. 打开 `_members/` 文件夹，复制 `wang-xiaolong.md`，重命名为新成员名字（如 `zhang-san.md`）
2. 打开新文件，改成：

```markdown
---
name: 张三
image: images/photo.jpg
role: phd
affiliation: 中山大学药学院（深圳）
---

2025 级博士研究生。研究方向为代谢与衰老。
```

3. `role` 可选值：`principal-investigator`（PI）、`postdoc`（博士后）、`phd`（博士）、`master`（硕士）
4. 有照片就把照片放进 `images/`，把 `image` 改成 `images/张三.jpg`

### 3. 修改研究方向或论文

打开 `research/index.md`：
- 研究方向正文：直接改对应小节文字
- 代表论文：复制一条论文的 `数字. 作者. 标题. *期刊* 年份. [链接](doi链接)`，改内容

### 4. 修改联系方式

打开 `contact/index.md` 和 `_config.yaml`（`links.email` 那行），改地址和邮箱。

### 5. 替换 logo 或图片

- logo：把新图命名为 `logo.png`，覆盖 `images/logo.png`（建议透明背景、宽度 ≥ 400px）
- 成员照片：放 `images/`，改成员文件里的 `image` 字段

## 四、改完如何查看效果

在项目文件夹打开终端，运行：

```bash
./preview.sh
```

浏览器自动打开预览页。改完内容后**重新运行** `./preview.sh` 即可看到最新效果（它会自动重新构建）。

## 五、如何发布到线上（Gitee）

改完并确认效果后，终端执行：

```bash
bundle exec jekyll build      # 重新生成网站文件
git add -A
git commit -m "更新内容：这里写你改了什么"
git push origin master        # 推送到 Gitee
```

如果使用 Gitee Pages 的自动部署，推送后稍等 1-2 分钟，线上自动更新。

---

## 小贴士

- **不确定改对没有**：先复制原文件备份（如 `index.md.bak`），改坏了就删掉改坏的文件、把备份改回原名
- **格式错误**：Markdown 用 `#` 标题、`-` 列表、`**加粗**`、`[文字](链接)`，照现有文件的样子改即可
- **问 AI**：把要改的内容告诉 AI（比如"把邮箱改成 xxx"），让 AI 直接帮你改，改完跑 `./preview.sh` 确认
