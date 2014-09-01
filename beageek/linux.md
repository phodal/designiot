#第五章 GNU/Linux

##什么是Linux

Linux是一种自由和开放源码的类UNIX操作系统内核。目前存在着许多不同的Linux发行版，可安装在各种各样的电脑硬件设备，从手机、平板电脑、路由器和影音游戏控制台，到桌上型电脑，大型电脑和超级电脑。
Linux是一个领先的操作系统内核，世界上运算最快的10台超级电脑运行的都是基于Linux内核的操作系统。

Linux操作系统也是自由软件和开放源代码发展中最著名的例子。只要遵循GNU通用公共许可证,任何人和机构都可以自由地使用Linux的所有底层源代码，也可以自由地修改和再发布。**严格来讲，Linux这个词本身只表示Linux内核，但在实际上人们已经习惯了用Linux来形容整个基于Linux内核，并且使用GNU
工程各种工具和数据库的操作系统（也被称为GNU/
Linux）。**通常情况下，Linux被打包成供桌上型电脑和服务器使用的Linux发行版本。一些流行的主流Linux发行版本，包括Debian（及其衍生版本Ubuntu），Fedora和openSUSE等。
Linux得名于电脑业余爱好者Linus Torvalds。

而不是如百度百科所讲的~~Linux操作系统是UNIX操作系统的一种克隆系统。它诞生于1991
年的 Linux桌面[1]10 月5
日（这是第一次正式向外公布的时间）。以后借助于Internet网络，并通过全世界各地计算机爱好者的共同努力，已成为今天世界上使用最多的一种UNIX
类操作系统，并且使用人数还在迅猛增长。~~

Linux只是个内核，而不是操作系统，所以在这我们再理解一下操作系统是由什么组成的。

##操作系统

操作系统（英语：Operating
System，简称OS）是管理计算机硬件与软件资源的计算机程序，同时也是计算机系统的内核与基石。操作系统需要处理如管理与配置内存、决定系统资源供需的优先次序、控制输入与输出设备、操作网络与管理文件系统等基本事务。操作系统也提供一个让用户与系统交互的操作界面。
操作系统的型态非常多样，不同机器安装的操作系统可从简单到复杂，可从手机的嵌入式系统到超级计算机的大型操作系统。许多操作系统制造者对它涵盖范畴的定义也不尽一致，例如有些操作系统集成了图形用户界面(GUI)，而有些仅使用命令行界面(CLI)，而将GUI视为一种非必要的应用程序。

操作系统位于底层硬件与用户之间，是两者沟通的桥梁。用户可以通过操作系统的用户界面，输入命令。操作系统则对命令进行解释，驱动硬件设备，实现用户要求。以现代标准而言，一个标准PC的操作系统应该提供以下的功能：

-   进程管理（Processing management）
-   内存管理（Memory management）
-   文件系统（File system）
-   网络通信（Networking）
-   安全机制（Security）
-   用户界面（User interface）
-   驱动程序（Device drivers）

而让我们来看一下两者之间的不同之处，这是一张linux的架构图我们可以发现内核只是位于底层。

###Linux架构图

####用户模式

应用程序（sh、[vi](http://zh.wikipedia.org/wiki/Vi "Vi")、[OpenOffice.org](http://zh.wikipedia.org/wiki/OpenOffice.org "OpenOffice.org")等）

复杂[库](http://zh.wikipedia.org/wiki/%E5%BA%93 "库")（[KDE](http://zh.wikipedia.org/wiki/KDE "KDE")、glib等）
简单库（opendbm、sin等）

C库（open、fopen、socket、exec、calloc等）

####内核模式

- 系统中断、调用、错误等软硬件消息
- 内核（驱动程序、进程、网络、内存管理等）
- 硬件（处理器、内存、各种设备）

我们可以发现，由linux内核+shell可以构成一个操作系统，而linux本身只是个内核，也就是图中的内核模式，负责控制系统的这些部分。也就是我们可以发现，Linux内核构成了一个操作系统除用户界面以外的部分，而shell就是这最后的用户界面。

而linux内核以外的部分就是由GNU计划构成的。

###Shell

Shell是系统的用户界面，提供了用户与内核进行交互操作的一种接口。它接收用户输入的命令并把它送入内核去执行。

实际上Shell是一个命令解释器，它解释由用户输入的命令并且把它们送到内核。不仅如此，Shell有自己的编程语言用于对命令的编辑，它允许用户编写由shell命令组成的程序。Shell编程语言具有普通编程语言的很多特点，比如它也有循环结构和分支控制结构等，用这种编程语言编写的Shell程序与其他应用程序具有同样的效果

bash 是一个为GNU计划编写的Unix shell。它的名字是一系列缩写：Bourne-Again SHell — 这是关于Bourne shell（sh）的一个双关语（Bourne again / born
again）。Bourne shell是一个早期的重要shell，由史蒂夫·伯恩在1978年前后编写，并同Version 7 Unix一起发布。bash则在1987年由布莱恩·福克斯创造。在1990年，Chet Ramey成为了主要的维护者。

shell将会是我们在GNU/linux中经常用到的经常有到的工具之一，用来操作计算机用的。在迁移到linux之前我们可以试用cygwin来进行模拟：

*Cygwin是许多[自由软件](http://zh.wikipedia.org/wiki/%E8%87%AA%E7%94%B1%E8%BD%AF%E4%BB%B6 "自由软件")的集合，最初由[Cygnus
Solutions](http://zh.wikipedia.org/wiki/Cygnus_Solutions "Cygnus Solutions")开发，用于各种版本的[Microsoft
Windows](http://zh.wikipedia.org/wiki/Microsoft_Windows "Microsoft Windows")上，运行[UNIX类](http://zh.wikipedia.org/wiki/Unix-like "Unix-like")系统。Cygwin*

###GCC

GCC（GNU Compiler Collection，GNU编译器套装），是一套由GNU开发的编程语言编译器。它是一套以GPL及LGPL许可证所发行的自由软件，也是GNU计划的关键部分，亦是自由的类Unix及苹果电脑Mac OS X 操作系统的标准编译器。GCC（特别是其中的C语言编译器）也常被认为是跨平台编译器的事实标准。

GCC原名为GNU C语言编译器（GNU C Compiler），因为它原本只能处理C语言。GCC很快地扩展，变得可处理C++。之后也变得可处理Fortran、Pascal、Objective-C、Java、Ada，以及Go与其他语言。

同shell一样，对于GNU/linux系统而言,GCC的作用也是无可取代的。当然如果只是一般用途的话，GCC对于一般用户可能没用，但是在些GNU/Linux系统上，我们可能就需要自己编译源码成二进制文件，而没有软件包，因而其重要性是不言而喻的。自然的如果我们自己动手编译GNU/Linux操作系统的话，我们会理解其的重要意义。有兴趣的同学可以试一下：Linux
From Scratch (LFS)。

###启动引导程序

最后，当我们构成以上的那些之后，我们就需要一个引导程序，以便使系统启动，引导进内核。

启动程序（bootloader）于电脑或其他计算机应用上，是指引导操作系统启动的程序。启动程序启动方式与程序视应用机型种类。例如在普通PC上，引导程序通常分为两部分：第一阶段引导程序位于主引导记录，用于引导位于某个分区上的第二阶段引导程序，如NTLDR、GNU
GRUB等。

BIOS
开机完成后，bootloader就接手初始化硬件设备、创建存储器空间的映射，以便为操作系统内核准备好

正确的软硬件环境。

简单的bootloader的虚拟汇编码，如其后的八个指令:

-   0: 将P暂存器的值设为8
-   1: 检查纸带({paper tape)读取器，是否已经可以进行读取
-   2: 如果还不能进行读取, 跳至1
-   3: 从纸带读取器，读取一byte至累加器
-   4: 如为带子结尾，跳至8
-   5: 将暂存器的值，存储至P暂存器中的数值所指定的地址
-   6: 增加P暂存器的值
-   7: 跳至1

但是随着计算机操作系统越来越复杂，位于MBR的空间已经放不下引导操作系统的代码，于是就有了第二阶段的引导程序，而MBR中代码的功能也从直接引导操作系统变成了引导第二阶段的引导程序。

通常在一个GNU/Linux系统中选用GNUGRUB做为引导程序，例如Ubuntu就是用GRUB2。

GNU GRUB（简称“GRUB”）是一个来自GNU项目的启动引导程序。GRUB是多启动规范的实现，它允许用户可以在计算机内同时拥有多个操作系统，并在计算机启动时选择希望运行的操作系统。GRUB可用于选择操作系统分区上的不同内核，也可用于向这些内核传递启动参数。

GNU GRUB的前身为Grand Unified Bootloader。它主要用于类Unix系统；同大多Linux发行版一样，GNU系统也采用GNU GRUB作为它的启动器。Solaris从10 1/06版开始在x86系统上也采用GNU GRUB作为启动器。

以上也就构成了一个简单的操作系统。

