<!-- 本章主要介绍了CSS引入方法、选择器、属性、关系选择器、弹性盒子模型、文档流及处理方法、CSS新特性和动画，除此之外雪碧图也为本章内容 -->
内联样式
<a style="background:red;font-size=24px">内联样式</a>
内部样式
<html>
	<head>
		<style>
			p{
				background:orange;
				font-size:red
			}
		</style>
	</head>
	<body>
		<p>内部样式</p>
	</body>
</html>
外部样式：通过<link rel="stylesheet" type="text/css" href="***.css">引入

全局选择器
*{
   margin: 0;
   padding: 0;
 }
元素选择器
类选择器
ID选择器
内联样式
优先级从上到下依次减弱

字体属性
	font-color、font-style、font-size、font-family
	颜色：#ff0000;red;rgb(255,0.0);rgba(255,0,0,0.5)
		其中a代表透明度
	形式：normal和italic
	粗细：bord、border、lighter、0~900
		其中400为默认，700为粗体
	字体：Microsoft Yahei；Simsun；SimHei
		其中字体需要用双引号引起来

背景属性
	background-color,background-image,background-position,background-size,background-repeat
	颜色
	图片background-image:url("")
	位置left right center/top/bottom/center
	大小backgroun-size:100px 100px;/50% 50%/cover/contain
	平铺方向 background-repeat:repeat/repeat-x/repeat-y/no-repeat
文本属性
	text-aligh, text-transform, text-indent, text-decoration
	对齐方式 left, right, center
	大小写 captialize, uppercase, lowercaseZ
	首行缩进 30px
	修饰 underline, overline, line-through
表格属性
	border-collapse:collapse, border:20px solid red, color, background-color, text-align, vertical-align, padding:15px
	是否折叠边框，边框属性，文字颜色，背景颜色，水平对齐方式，垂直对齐方式，文字于边框距离

选择器空格隔开 后代选择器
选择器>隔开 子代选择器
选择器+隔开 相邻兄弟选择器
选择器~隔开 通用兄弟选择器

div{
	display:flex;#通过试着display为flex将容器转化为弹性容器，只定义弹性子元素在容器内如何布局
	flex-direction:row/row-reverse/column/column-reverse
	justity-content:flex-start/flex-end/center
	align-items:flex-start/flex-end/center
	flex:1#权重为1，默认为0，0-1之间代表队剩余空间进行分配
}

文档流为可显示对象在排列时所占用的位置/空间
文档流缺陷：
	高矮不齐、底边对齐
	空白折叠
	img换行有空隙、紧挨无空隙
脱离文档流方式
	浮动
	绝对定位
	固定定位
浮动
	float:left/right/inherit/none
	浮动会导致父元素高度塌陷，后续元素也会收到影响，解决办法为
		父元素设置display:flow-root
		伪对象方式：
			.parent{
				content:"";
				display:block
				clear:both
				}
		其他方式为父元素设置overflow:hidden，可解决父元素高度塌陷，但是会裁剪超出父元素的内容，或者为非浮动子元素设置clear:both，但是对于多个非浮动子元素不可取，浪费时间，或者为父元素设置高度，但是非浮动子元素的背景和边框会覆盖在浮动子元素下方，文本内容会环绕在浮动子元素周围，皆不可取，故这三种方法都已淘汰。
	任何元素都可以浮动
定位
	定位分为相对定位，绝对定位和固定定位，后两者脱离文档流绝对定位和固定定位的区别是一个相对于页面，一个相对于窗口，定位时会判断父级元素有没有定位，如果没有则逐级向上寻找
	表现方式：
		.box{
			weigh:200px;
			height:200px;
			background-color:red;
			positon:relative/absolute/fixed;
			top:200px;
			left:200px;
			}
堆叠顺序
	定义属性：z-index:num;num大的堆叠于前面

box{
	border-radis:20px;#四个角20像素圆弧
	border-radis:20px 10px;#左上右下20像素，左下右上10px
	border-radis:20px 10px 30px 左上20px,左下右上10px,右下30px
	border-shadow:h-shadow v-shadow blur color#水平阴影位置，垂直位置，模糊距离，阴影颜色
	}

@keyframe name{
	from{
		opacity:.2;
		border-shadow: 2px 2px 5px rgba(255,255,255,0.1)
		weight: 200px
		height: 200px
		background-color:red;
		}
	50%{
		opacity:.6;
		border-shadow: 2px 2px 5px rgba(255,255,255,0.2)
		weight: 400px
		height: 400px
		background-color:green;
		}
	to{
		opacity:1;
		border-shadow: 2px 2px 5px rgba(255,255,255,0.5)
		weight: 200px
		height: 200px
		background-color:blue;
		}
	}
.animation{
	animation:name duration timing-function delay iteration-count direction
	# 名称、持续时间、动画效果速率、开始时间、循环次数、方向 
	}
	
.animation:hover{
	animation-play-state:pause;
	}