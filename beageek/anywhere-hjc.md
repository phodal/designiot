#无处不在的三剑客#
这时我们终于了解了我们的三剑客，就这么可以结合到一起了，HTML+Javascript+CSS是这一切的基础。而我们用到的其他语言如PHP、Python、Ruby等等的最后都会变成上面的结果，当然还有Coffeescript之类的语言都是以此为基础，这才是我们需要的知识。

##Hello,Geek##
有了一些些的基础之后，我们终于能试着去写一些程序了。也是时候去创建一个像样的东西，或许你在一些见面设计方面的书籍看过类似的东西，可能我写得也没有那些内容好，只是这些都是一些过程。过去我们都是一点点慢慢过来的，只是现在我们也是如此，技术上的一些东西，事实上大家都是知道的。就好比我们都觉得我们可以开个超市，但是如果让我们去开超市的话，我们并不一定能赚钱。

学习编程的目的可能不在于我们能找到一份工作，那只是在编程之外的东西，虽然确实也是很确定的。但是除些之处，有些东西也是很重要的。、

过去没有理解为什么会一些人会不厌其烦地去回答别人的问题，有时候可能会想是一种能力越大责任越大的感觉，但是有时候在写一些博客或者回答别人的问题的时候我们又重新思考了这些问题，又重新学习了这些技能。所以这里可能说的不是关于编程的东西而是一些编程以外的东西，关于学习或者学习以外的东西。

##从源码学习##
过去总会觉得学了一种语言的语法便算是学了一种语言，于是有一天发现到了这个语言的项目上的时候，虽然会写上几行代码，但是却不像这语言的风格。于是这也是这一篇的意义所在了：

###HTML###
写好HTML的一个要点在于看别人写的代码，这只是一方面，我们所说的HTML方面的内容可能不够多，原因有很多，很多东西都需要在实战中去解决。读万卷书和行万里路，分不清哪个有重要的意义，但是如果可以同时做好两个的话，成长会很快的。

写好HTML应该会有下面的要点

 - 了解标准及遵守绝大多数标准
 - 注重可读性，从ID及CLASS的命名
 - 关注SEO与代码的联系
 
或许在这方面我也算不上很了解，不过按笔者的经验来说，大致就是如此。

多数情况下我们的HTML是类似于下面这样子的

    <div class="col-md-3 right">
        {% nevercache %}
        {% include "includes/user_panel.html" %}
        {% endnevercache %}
        <div class="panel panel-default">
        <div class="panel-body">
        {% block right_panel %}
        {% ifinstalled mezzanine.twitter %}
        {% include "twitter/tweets.html" %}
        {% endifinstalled %}
        {% endblock %}
        </div>
        </div>
    </div>
    
换句话说HTML只是基础，而不是日常用到的。我们的HTML是由template生成的，我们可以借助于mustache.js又或者是angluarjs之类的js库来生成最后的HTML，所以这里只是一个开始。

还需要了解的一部分就是HTML的另外一个重要的部分，DOM树形结构


#DOM树形结构图#

###javascript###
这里以未压缩的jQuery源码和zepto.js作一个小小的比较，zepto.js是兼容jQuery的，因此我们举几个有意思的函数作一简单的比较，关于源码可以在官网上下载到。

在zepto.js下面判断一个值是否是函数的方面如下，

    function isFunction(value) { return type(value) == "function" }

而在jQuery下面则是这样的

	isFunction: function( obj ) {
		return jQuery.type(obj) === "function";
	},
	
而他们的用法是一样的，都是

    $.isFunction();
    
jQuery的作法是将诸如isFunction,isArray这些函数打包到jQuery.extend中，而zepto.js的则是
也是这样的，只不过多了一行

    $.isFunction = isFunction

遗憾的是我也没去了解过为什么，之前我也没有看过这些库的代码，所以这个问题就要交给读者去解决了。jQuery里面提供了函数式编程接口，不过jQuery更多的是构建于CSS选择器之上，对于DOM的操作比javascript自身提供的功能强大得多。如果我们的目的在于更好的编程，那么可能需要诸如Underscore.js之类的库。或许说打包自己常用的函数功能为一个库，诸如jQuery

    function isFunction(value) { return type(value) == "function" }
    function isWindow(obj)     { return obj != null && obj == obj.window }
    function isDocument(obj)   { return obj != null && obj.nodeType == obj.DOCUMENT_NODE }
    function isObject(obj)     { return type(obj) == "object" }

我们需要去了解一些故事背后的原因，越来越害怕GUI的原因之一，在于不知道背后发生了什么，即使是开源的，我们也无法了解真正的背后发生什么了。对于不是这个工具、软件的用户来说，开源更多的意义可能在于我们可以添加新的功能，以及免费。如果没有所谓的危机感，以及认为自己一直在学习工具的话，可以试着去打包自己的函数，打包自己的库。

	var calc={
		add: function(a,b){
			return a+b;
		},
		sub: function(a,b){
			return a-b;
		},
		dif: function(a,b){
			if(a>b){
				return a;
			}else{
				return b;
			}
		}
	}
	
然后用诸如jslint测试一下代码。

	$ ./jsl -conf jsl.default.conf
	JavaScript Lint 0.3.0 (JavaScript-C 1.5 2004-09-24)
	Developed by Matthias Miller (http://www.JavaScriptLint.com)

	app.js
	/Users/fdhuang/beageek/chapter4/src/app.js(15): lint warning: missing semicolon
		}
	........^


	0 error(s), 1 warning(s)
	
于是我们需要在第15行添加一个分号。

最好的方法还是阅读别人的代码，而所谓的别人指的是一些相对较大的网站的，有好的开发流程，代码质量也不会太差。而所谓的复杂的代码都是一步步构建上去的，罗马不是一天建成的。

有意思的是多数情况下，我们可能会用原型去开发我们的应用，而这也是我们需要去了解和掌握的地方，

	function Calc(){

	}
	Calc.prototype.add=function(a,b){
		return a+b;
	};
	Calc.prototype.sub=function(a,b){
		return a-b;
	};

我们似乎在这里展示了更多的Javascript的用法，但是这不是一好的关于Javascript的介绍，有一天我们还要用诸如qunit之类的工具去为我们的function写测试，这时就是一个更好的开始。

如果我们乐意的话，我们也可以构建一个类似于jQuery的框架，以用来学习。

作为一门编程语言来说，我们学得很普通，在某种意义上来说算不上是一种入门。但是如果我们可以在其他的好书在看到的内容，就没有必要在这里进行复述，目的在于一种学习习惯的养成。

###CSS###
CSS有时候很有趣，但是有时候有很多我们没有意识到的用法，这里以Bootstrap为例，这是一个不错的CSS库。最令人兴奋的是没有闭源的CSS，没有闭源的JS，这也就是前端好学习的地方所在了，不过这是一个开源的CSS库，虽然是这样叫的，但是称之为CSS库显然不合适。

    a,
    a:visited {
      text-decoration: underline;
    }
    a[href]:after {
      content: " (" attr(href) ")";
    }
    abbr[title]:after {
      content: " (" attr(title) ")";
    }
    a[href^="javascript:"]:after,
    a[href^="#"]:after {
      content: "";
    }
    
这里有一些有趣的，值得一讲的CSS用法。

- 伪类选择器,如a:visited这样需要其他条件来对元素应用样式，用于已访问的链接。
- 属性选择器,如a[href]这样当a元素存在href这样的属性的时候来寻找应用元素。

其他的还需要去好好了解的就是**CSS的盒模型**，作为CSS的基石之一。

#CSS盒模型图#

诸如

	* {
      margin: 0px;
      padding: 0px;
      font-family: Helvetica;
    }

这样的通用器用来进行全局选择的工具和我们用于抵消某个body对于子选择器的影响一样值得注意得多。

##笔记##
写博客似乎是一个不错的好习惯，作为一个不是很优秀的写手。对于来说，有时候发现原来能教会别人对于自己的能力来说算是一种肯定。有些时候教会别人才算是自己学会的表现，总会在项目上的时候需要自己去复述工作的一个过程，我们需要整理好我们的思路才能带给别人更多的收获。我们的笔记上总会留下自己的学习的一些过程，有些时候我们想要的只是一点点的鼓励，有时是诸如评论一类，有时可能是诸如访问量。更多的可能是我们可以重新整理自己的知识，好好复习一下，以便于好好记住，写出来是一个好的过程。

无处不在的三剑客就这样到了这里，写得似乎很多也很少，但是还是没有做出来一个东西，于是我们朝着这样一个方向前进。