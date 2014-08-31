#无处不在的CSS#
CSS或许你觉得他一点儿也不重要，HTML好比是建筑的框架，CSS就是用于装修房子。那么Javascript呢，我听到的最有趣的说法是小三，先让我们回到代码上来吧。

##CSS##

下面就是我们之前说到的代码，css将Red三个字母变成了红色。

	<!DOCTYPE html>
	<html>
	<head>
	</head>
	<body>
		<p id="para" style="color:red">Red</p>
	</body>
		<script type="text/javascript" src="app.js"></script>
	</html>
	
只是，

	var para=document.getElementById("para");
	para.style.color="blue";
	
将字体变成了蓝色，CSS+HTML让页面有序的工作着，但是Javascript打乱了这些秩序，不过却也让生活多姿多彩，小三不都是这样的么——终于可以理解，为什么以前人们对于Javascript没有好感了？不过这里要讲的是正室，也就是CSS，这时还没有Javascript。
	
![Alt text](./src/redfonts.png)

##关于CSS##

这不是一篇好的关于讲述CSS的书籍，所以不会去说CSS是怎么来的，有些东西既然我们可以很容易从其他地方知道，也就不需要花太多时间去重复。诸如重构等这些的目的之一也在于去除重复的代码，不过有些重复是不可少的，也是有必要的，而通常这些东西可能是由其他地方复制过来的。

到目前为止我们没有依赖于任何特殊的硬件或者是软件，对于我们来说我们最基本的需求就是一台电脑，或者可以是你的平板电脑，当然也可以是你的智能手机，因为他们都有个浏览器，而这些都是能用的，对于我们的CSS来说也不会有例外的。

CSS是来自于(Cascading Style Sheets)，到今天我也没有记得他的全称，CSS还有一个中文名字是层叠式样式表，翻译成什么样的可能并不是我们关心的内容，我们需要关心的是他能做些什么。作为三剑客之一，它的主要目的在于可以让我们方便灵活地去控制Web页面的外观表现。我们可以用它做出像淘宝一样复杂的界面，也可以像我们的书本一样简单，不过如果要和我们书本一样简单的话，可能不需要用到CSS。HTML一开始就是依照报纸的格式而设计的，我们还可以继续用上面说到的编辑器，又或者是其他的。如果你喜欢DreamWeaver那也不错，不过一开始使用IDE可无助于我们写出良好的代码。

忘说了，CSS也是有版本的，和windows，Linux内核等等一样，但是更新可能没有那么频繁，HTML也是有版本的，JS也是有版本的，复杂的东西不是当前考虑的内容。

##代码结构##

对于我们的上面的Red示例来说，如果没有一个好的结构，那么以后可能就是这样子。

	<!DOCTYPE html>
	<html>
	<head>
	</head>
	<body>
		<p style="font-size: 22px;color:#f00;text-align: center;padding-left: 20px;">如果没有一个好的结构</p>
		<p style="	font-size:44px;color:#3ed;text-indent: 2em;padding-left: 2em;">那么以后可能就是这样子。。。。</p>
	</body>
	</html>
	
虽然我们看到的还是一样的:
	
![Alt text](./src/nostyle.png)

于是我们就按各种书上的建议重新写了上面的代码

	<!DOCTYPE html>
	<html>
	<head>
		<title>CSS example</title>
		<style type="text/css">
			.para{
				font-size: 22px;
				color:#f00;
				text-align: center;
				padding-left: 20px;
			}
			.para2{
				font-size:44px;
				color:#3ed;
				text-indent: 2em;
				padding-left: 2em;
			}
		</style>
	</head>
	<body>
		<p class="para">如果没有一个好的结构</p>
		<p class="para2">那么以后可能就是这样子。。。。</p>
	</body>
	</html>
	
总算比上面好看也好理解多了，这只是临时的用法，当文件太大的时候，正式一点的写法应该是下面:

	<!DOCTYPE html>
	<html>
	<head>
		<title>CSS example</title>
		<style type="text/css" href="style.css"></style>
	</head>
	<body>
		<p class="para">如果没有一个好的结构</p>
		<p class="para2">那么以后可能就是这样子。。。。</p>
	</body>
	</html>
	
我们需要
	
	<!DOCTYPE html>
	<html>
	<head>
		<title>CSS example</title>
		<link href="./style.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<p class="para">如果没有一个好的结构</p>
		<p class="para2">那么以后可能就是这样子。。。。</p>
	</body>
	</html>

然后我们有一个像app.js一样的style.css放在同目录下，而他的内容便是

	.para{
		font-size: 22px;
		color:#f00;
		text-align: center;
		padding-left: 20px;
	}
	.para2{
		font-size:44px;
		color:#3ed;
		text-indent: 2em;
		padding-left: 2em;
	}
	

这代码和JS的代码有如此多的相似

	var para={
		font_size:'22px',
		color:'#f00',
		text_align:'center',
		padding_left:'20px',
	}
	
而22px、20px以及#f00都是数值，因此。。

	var para={
		font_size:22px,
		color:#f00,
		text_align:center,
		padding_left:20px,
	}	
	
目测差距已经尽可能的小了，至于这些话题会在以后讨论到，如果要让我们的编译器更正确的工作，那么我们就需要非常多的这种符号，除非你乐意去理解:

	(dotimes (i 4) (print i))
	
总的来说我们减少了符号的使用，但是用lisp便带入了更多的括号，不过这是一种简洁的表达方式，也许我们可以在其他语言中看到，或者说用这个去。。
	
    \d{2}/[A-Z][a-z][a-z]/\d{4}
    
没有什么会比一开始不理解那是正则表达式，然后去修改上面的代码，为的是去从一堆数据中找出某日/某月/某年。

这门语言可能是为设计师而设计的，但是设计师大部分还是不懂编程的，不过相对来说还是比其他语言好理解一些。

##样式与目标##
下面也就是我们的样式

	.para{
		font-size: 22px;
		color:#f00;
		text-align: center;
		padding-left: 20px;
	}
	
我们的目标就是

	如果没有一个好的结构
	
所以样式和目标在这里牵手了，问题是他们是如何在一起的呢？下面就是CSS与HTML沟通的重点所在了:

###选择器###
我们用到的选择器叫做类选择器，也就是class，或者说应该称之为class选择器更合适。与类选择器最常一起出现的是ID选择器，不过这个适用于比较高级的场合，诸如用JS控制DOM的时候就需要用到ID选择器。而基本的选择器就是如下面的例子:

	p.para{
		color:#f0f;
	}

将代码添加到style.css的最下面会发现“如果没有一个的结构”变成了粉红色，当然我们还会有这样的写法

	p>.para{
		color:#f0f;
	}
	
为了产生上面的特殊的样式，虽然不好看，但是我们终于理解什么叫层叠样式了，下面的代码的重要度比上面高，也因此有更高的优先规则。

而通常我们可以通过一个
   
    p{
    	text-align:left;
    }
    
这样的元素选择器来给予所有的p元素一个左对齐。

还有复杂一点的复合型选择器，下面的是HTML文件

	<!DOCTYPE html>
	<html>
	<head>
		<title>CSS example</title>
		<link href="./style.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<p class="para">如果没有一个好的结构</p>
		<div id="content">
			<p class="para2">那么以后可能就是这样子。。。。</p>
		</div>
	</body>
	</html>
	
还有CSS文件


	.para{
		font-size: 22px;
		color:#f00;
		text-align: center;
		padding-left: 20px;
	}
	.para2{
		font-size:44px;
		color:#3ed;
		text-indent: 2em;
		padding-left: 2em;
	}

	p.para{
		color:#f0f;
	}
	div#content p {
		font-size:22px;
	}
	
##更有趣的CSS##
一个包含了para2以及para_bg的例子

		<div id="content">
			<p class="para2 para_bg">那么以后可能就是这样子。。。。</p>
		</div>
		
我们只是添加了一个黑色的背景

	.para_bg{
		background-color:#000;
	}
	
重新改变后的网页变得比原来有趣了很多，所谓的继承与合并就是如上面的例子。

我们还可以用CSS3做出有趣的效果，而这些并不在我们的讨论范围里面，因为我们讨论的是be a geek。

或许我们写的代码都是那么的简单，从HTML到Javascript，还有现在的CSS，只是有一些东西才是核心的，而不是去考虑一些基础的语法，基础的东西我们可以从实践的过程中一一发现。但是我们可能发现不了，或者在平时的使用中考虑不到一些有趣的用法或者说特殊的用法，这些可以从观察一些比较好的设计的代码中学习到。复杂的东西可以变得很简单，简单的东西也可以变得很复杂。

