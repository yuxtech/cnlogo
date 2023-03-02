# cnlogo

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/yuxtech/cnlogo/main.svg)](https://results.pre-commit.ci/latest/github/yuxtech/cnlogo/main)
[![github/workflow](https://github.com/yuxtech/cnlogo/actions/workflows/main.yml/badge.svg)](https://github.com/yuxtech/cnlogo/actions)

[![github/downloads](https://shields.io/github/downloads/yuxtech/cnlogo/total)](https://github.com/yuxtech/cnlogo/releases)
[![github/downloads/latest](https://shields.io/github/downloads/yuxtech/cnlogo/latest/total)](https://github.com/yuxtech/cnlogo/releases/latest)
[![github/issues](https://shields.io/github/issues/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/discussions)
[![github/milestones](https://shields.io/github/milestones/all/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/milestones)
[![github/forks](https://shields.io/github/forks/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/network/members)
[![github/stars](https://shields.io/github/stars/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/stargazers)
[![github/watchers](https://shields.io/github/watchers/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/watchers)
[![github/contributors](https://shields.io/github/contributors/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/commits)
[![github/release-date](https://shields.io/github/release-date/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/releases/latest)

[![github/license](https://shields.io/github/license/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo/blob/main/LICENSE)
[![github/languages](https://shields.io/github/languages/count/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo)
[![github/languages/top](https://shields.io/github/languages/top/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo)
[![github/directory-file-count](https://shields.io/github/directory-file-count/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo)
[![github/code-size](https://shields.io/github/languages/code-size/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo)
[![github/repo-size](https://shields.io/github/repo-size/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo)
[![github/v](https://shields.io/github/v/release/yuxtech/cnlogo)](https://github.com/yuxtech/cnlogo)

本宏包利用 tikz 绘制国内高校的校徽，借助学校本身提供的 pdf 高清矢量图通过
inkscape 转化为 tikz 代码。

<!-- markdownlint-disable MD013 -->

目前支持：安徽大学 (ahu), 北京航空航天大学 (bhu), 北京交通大学 (bjtu), 北京邮电大学 (bjydu), 北京师范大学 (bnu), 长安大学 (chu), 中国矿业大学 (ckyu), 中南大学 (csu), 中国地质大学 (cug), 中国政法大学 (cupsl), 东北财经大学 (dbcju), 大连理工大学 (dllgu), 复旦大学 (fdu), 贵阳师范大学 (gnu), 广东外语外贸大学 (gufs), 湖北大学 (hbu), 华东师范大学 (hdsfu), 华东政法大学 (hdzfu), 合肥工业大学 (hgyu), 河海大学 (hhu), 哈尔滨工业大学 (hit), 华南理工大学 (hnlgu), 湖南师范大学 (hnnu), 湖南大学 (hnu), 华中科技大学 (hustc), 华中师范大学 (hznu), 吉林大学 (jlu), 暨南大学 (jnu), 江南大学 (ju), 兰州大学 (lzu), 中央民族大学 (muc), 南昌大学 (ncu), 东北大学 (neu), 南京大学 (nju), 南京理工大学 (njust), 南开大学 (nku), 北京大学 (pku), 中国人民大学 (ruc), 四川大学 (scu), 山东财经大学 (sdcju), 山东大学 (sdu), 上海大学 (shu), 上海交通大学 (stju), 南方科技大学 (sustc), 西南农业大学 (swau), 西南师范大学 (swcnu), 中山大学 (sysu), 深圳大学 (szu), 清华大学 (thu), 同济大学 (tju), 天津大学 (tjuu), 北京科技大学 (ustb), 中国科学技术大学 (ustc), 武汉理工大学 (whlgu), 武汉大学 (whu), 温州大学 (wzu), 西北农林科技大学 (xbnlkju), 西安电子科技大学 (xdu), 西安交通大学 (xjtu), 厦门大学 (xmu), 扬州大学 (yzu), 中国传媒大学 (zcmu), 中国海洋大学 (zhyu), 浙江大学 (zju), 中国科学院大学 (zky), 中国农业大学 (znyu), 郑州大学 (zzu)。

## 安装

### 用包管理器

```sh
tlmgr install cnlogo
```

### 手动下载源代码编译并安装

```sh
git clone --depth=1 https://github.com/yuxtech/cnlogo
cd cnlogo
l3build install
```

注意，编译包括编译宏包 `cnlogo.sty` 和文档 `cnlogo.pdf`
。后者因为含有所有学校的校徽图片编译极慢，在我的电脑上共需要编译 7 分钟。
建议从包管理器安装或手动下载编译好的安装包。如果你一定要从源代码编译，你可以只编译
`cnlogo.sty` 并参照下一节手动安装。

```sh
lualatex cnlogo.ins  # 编译宏包 `cnlogo.sty`
lualatex cnlogo.dtx  # 编译文档 `cnlogo.pdf`
```

### 从编译好的安装包手动安装

从
[Release](https://github.com/yuxtech/cnlogo/releases/latest)
下载 `cnlogo.tds.zip` 。通过 `unzip` 解压缩到正确的路径并用`texhash` 刷新。

```sh
$ gh release list -Ryuxtech/cnlogo
0.0.1                   Latest  (0.0.1)   about 24 minutes ago
...
$ gh release download 0.0.1 -Ryuxtech/cnlogo
$ ls
 cnlogo-ctan.zip   cnlogo.tds.zip
$ mkdir -p $(kpsewhich --var-value TEXMFHOME)
$ mv cnlogo.tds.zip $(kpsewhich --var-value TEXMFHOME)
$ unzip cnlogo.tds.zip
Archive:  cnlogo.tds.zip
inflating: doc/latex/cnlogo/README.md
inflating: doc/latex/cnlogo/cnlogo.pdf
inflating: tex/latex/cnlogo/cnlogo.sty
inflating: source/latex/cnlogo/cnlogo.ins
inflating: source/latex/cnlogo/cnlogo.dtx
$ texhash
texhash: /etc/texmf: directory not writable. Skipping...
texhash: /usr/local/share/texmf: directory not writable. Skipping...
texhash: /usr/share/texmf: directory not writable. Skipping...
texhash: /usr/share/texmf-dist: directory not writable. Skipping...
texhash: /var/lib/texmf: directory not writable. Skipping...
texhash: Done.
```

### 确保你已经安装成功

```sh
$ kpsewhere cnlogo.sty
/home/your_name/texmf/tex/latex/cnlogo/cnlogo.sty
```

<!-- ex: nowrap
-->

## 用法

[帮助文档](https://mirrors.cnlogo.org/language/chinese/cnlogo/cnlogo.pdf)

## 开发

### 构建

```sh
git clone --depth=1 https://github.com/yuxtech/cnlogo  # 下载源代码
cd cnlogo
vi cnlogo/学校的缩写.tex  # 新建文件，可以参考别的学校
cat cnlogo/学校的缩写.tex  # 显示文件内容
```

```tex
% 学校的缩写
% 学校的网址
% 你的姓名 <你的邮箱>  % 方便 logo 有问题的时候你的学弟学妹可以联系到你
% 其他注意事项
% 例如 logo 的原始 pdf 文件来源，以便确认没有版权问题或者出现争议时方便查找

% 定义颜色
\definecolor{学校的缩写}{RGB}{0,0,0}
% 定义命令，命令参考上一节的帮助文档
\NewDocumentCommand\学校的缩写logo{O{学校的缩写}O{1}}{
... % 生成学校 logo 的 tikz 代码，参见下一节
}
...
```

```sh
l3build tag  # 自动更新文档和源代码，不要手动编辑它们！
l3build doc  # 确认能否成功构建帮助文档
xdg-open *.pdf  # 浏览帮助文档检查图标是否正确
git commit -m ':sparkles: Support 学校的名字'
gh pr create  # 发送代码合并请求
```

### 从 logo 的 `pdf` 文件得到生成 `logo` 的 tikz 代码

`pdf` 文件难以修改颜色，所以该项目使用 `tikz` 代码存储 logo 。

安装任意一个 `svg` 转 `tikz` 的插件：

- [svg2tikz](https://github.com/xyz2tex/svg2tikz)
- [inkscape2tikz](https://github.com/halamalala/inkscape2tikz)

1. 使用 [Inkscape](https://github.com/inkscape/inkscape) 打开 `pdf` 后另存为 `svg`
2. `Extensions > Export > Export to tikz`
3. 编辑生成的代码得到 `cnlogo/学校的缩写.tex`

## TODO

1. 为所有学校都添加一个指向学校网址的超链接
2. 将学校的 logo 统一修改为相同尺寸，目前定为能使以下代码中校徽的圆能与侧边栏正切的尺寸

```tex
\documentclass{beamer}
\usepackage[ustc]{cnlogo}
\logo{\ustclogo[ustc][0.1]}
\usetheme{Berkeley}
\usecolortheme{spruce}
\begin{document}

\maketitle

\end{document}
```
