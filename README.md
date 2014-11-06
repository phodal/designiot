
##《[一步步搭建物联网系统](http://designiot.phodal.com/)》

**在线查看**:[一步步搭建物联网系统](http://designiot.phodal.com/)

**下载PDF版**:[http://designiot.phodal.com/build/iot.pdf] (http://designiot.phodal.com/build/iot.pdf)

**下载EPUB版**:[http://designiot.phodal.com/build/designiot.epub] (http://designiot.phodal.com/build/designiot.epub)

**下载MOBI版**:[http://designiot.phodal.com/build/designiot.mobi] (http://designiot.phodal.com/build/designiot.mobi)

##作者名单 

Github | Name
|--------| ---------|
[phodal](https://github.com/phodal) |[Phodal Huang](http://www.phodal.com)
[Lboyve](https://github.com/Lboyve) | Fortware

##如何编辑

只需要一点markdown的知识，别担心这货很简单。

###关于目录

编辑相关的目录

 - src/ 目录下放的是文档相关的markdown
 - src/pre 相当于一些书的前言及简介部分
 - images/ 目录下放的是相应的图片
 
生成文档相关的目录
 
 - template/ 里面放有latex及html的模板
 - build/ PDF版,MOBI版,EPUB版
 - end/ 毕业设计所在目录
 - css/ html版的css

###其他文件

 - index.html 你懂的
 - Makefile 一个简单的make
 - README.md github上显示的内容。
 - License.md 协议相关
 - CNAME 域名的CNAME

##章节及说明

以``1.2.anywhere-javascript.md``为例

1.2

- 1说的是第一部分
- 2说的是第二章

以此类推

目录一共有三个部分

 - 基础部分
 - HTTP版部分
 - 扩展部分(如coap,mqtt,biz等等)

##如何编译

如果你不是在类Unix平台上的话——说的是Windows，编译可能会很困难。

###编译所需要的软件

大致有下面三个

 - latex
 - pandoc
 - make
 
如果不需要生成pdf版，就不需要latex。
  
###编译命令
 
只需要在目录执行
 
    make

## License

© 2014 [Phodal Huang](http://www.phodal.com). This code is distributed under the GNU/GPL license.
