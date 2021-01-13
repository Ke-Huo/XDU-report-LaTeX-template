# XDU-report-LaTeX-template
# 介绍

这里是西安电子科技大学课程报告 `LaTeX` 模板，注：此模板是根据一个学长前辈进行改写

**如果老师有明确要求，请勿使用此模板。**



# 文档目录与编译方式

`TexLive 2020`，完整编译方式为 `xelatex` → `bibtex`→`xelatex`*2。

```bash
XDU-report
├─ chapter                                  # 各个章节
│    ├─ abstract.tex                        # 摘要页
│    ├─ appendix.tex                        # 附录
│    ├─ chapter1.tex                        # 章节1
│    ├─ chapter2.tex                        # 章节2
│    └─ reference.tex                       # 参考文献
├─ figure                                   # 图片文件
│    ├─ logo.pdf                            # 西电logo
│    └─ ....pdf                             # 几个示例
├─ code                                     # 代码文件
│    ├─ Microwave.m                         # 一个Matlab语言样例代码
│    └─ Microwave.py                        # 一个Python语言样例代码
├─ books.bib                                # 参考文献的 bib 文件
├─ main.pdf                                 # 结果 pdf 文件
├─ main.tex                                 # 要编译的主文件
└─ xdureport.cls                            # 要导入的文档类
```


# 对原项目的修改

原项目链接 👉 **[原项目](https://github.com/muyuuuu/XDU-report-LaTeX-template)**

在此基础上修改了以下位置

- 修改了封面样式
- 修改的部分字号字体
- 修改了参考文献的样式
- 修改了插入代码的样式
- 导入了几个常用的宏包
