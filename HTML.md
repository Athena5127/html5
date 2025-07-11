<!-- 本章主要介绍了HTML的基本骨架、换行、段落、水平线、图片、超链接、文本标签、有序列表、无序列表、表格、表单及HTML5新标签 -->
HTML为描述网页的超文本标记语言，标记语言为一套标记标签，包括但标签和双标签，HTML的骨架由
<!DOCTYPE html>
<html>
	<head>
    <title></title>
    <meta charset="utf-8">
	</head>
    <body>HTML基本骨架代码块</body>
</html>
组成

<br>命令用于换行
<p></p>用于表示段落
<hr>用于表示水平线
<hr color="" align="" size="" width="">用于设置水平线的颜色、位置、高度、宽度
align默认center

<img width="" height="" alt="" title="" src="">分别表示图像的宽度、高度、替代文本、鼠标悬停文本、路径

<a herf="">文本、图片</a>
未访问蓝色、访问后紫色、点击时红色，可通过CSS进行修改

<ol type="">
	<li></li>
	<li></li>
</ol>
type的属性有A,a,1,l,i

<!DOCTYPE html>
<ul type="">
	<li>无序列表</li>
	<li>无序列表</li>
</ul>
type的属性有disc、square、circle、none，分别代表实心圆、正方形、空心圆、空

<table><tr><td conspan="" rowspan=""></td><tr><table>
表格不常用，常用表单

<form action="url" method="get|post"><input type="text"><input type="submit"></form>
表单分为表单标签、表单域和表单按钮
<form>
	用户名：<input type="text">
	密码：<input type="password">
	<input type="submit" value="提交">
</form>

文本标签为内敛元素
<button><input><img>为行内块元素，能够识别宽高，不换行
其他基本都为块元素

<header>第一行</header>
<nav>导航</nav>
<article>
	<section>
	节
	</section>
</article>
<aside>侧边栏</aside>
<footer>脚部</footer>