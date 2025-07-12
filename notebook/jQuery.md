选择器
$('').html()
$('.class').html()[0]类选择器
$('label').html()[0]元素选择器
$('#id').html()id选择器
$(label[name=value])
$(label[name|=value])前缀或完整
$(label[name*=value])包含子字符串
$(label[name~=value])包含空格分开的字符串之一
$(label[name$=value])后缀
$(label[name^=value])前缀
$(label:eq(index))索引
$(label:even)输出奇数位置标签
$(label:odd)输出偶数位置标签
$(label:first)输出第一个标签
$(label:last)输出最后一个标签
$(label:gt(index)）输出大于索引位置的标签
$(label:lt(index)）输出小于索引位置的标签

DOM操作
$(label Selector).addClass()可以添加多个样式，用空格隔开
$(label Selector).removeClass()可以删除指定样式或全部样式，括号里若无内容为全部样式
$(label Selector).toggleClass()若有指定样式则删除，若无指定样式则添加
$(label Selector).hasClass()判断是否有该样式
$(label Selector).html()
$(label Selector).html("")修改内容
$(label Selector).text("")修改内容不识别标签
$(.input).val()获取输入框内容
$(.input).val("")修改输入框内容
$(label Selector).attr(className)获取属性
$(label Selector).attr({})修改属性
$(label Selector).wrap()对所有匹配的标签进行分别包裹
$(label Selector).unwrap()对父级标签进行删除并保留自身所在位置
$(label Selector).wrapAll()对所有匹配的标签进行总体包裹
$(label Selector).wrapInner()对标签内容用文档标签包裹
$(label Selector).append()在标签内的头部插入标签或内容
$(label Selector).prepend()在标签内的尾部插入标签或内容
$(label Selector).after()在标签的后面插入标签
$(label Selector).before()在标签的前面插入标签
$(label Selector).empty()删除所有子节点
$(label Selector).remove()删除元素
$(replaced content).replaceAll(label)用匹配元素替换目标元素
$(label Selector).replaceWith()用提供内容替换匹配元素，于replaceAll()相反

CSS操作
$(label Selector).css()
$(label Selector).css("")
$(label Selector).css({})
$(label Selector).width()
$(label Selector).width("")
$(label Selector).height()
$(label Selector).height("")
$(label Selector).innerWidth()
$(label Selector).innerHeight()
$(label Selector).outerWidth()
$(label Selector).outerHeight()
$(label Selector).offset()获取相对于文档位置
$(label Selector).offset("")设置相对于文档位置
$(label Selector).position()获取相对于父级元素位置
$(label Selector).position("")设置相对于父级元素位置
$(label Selector).scrollLeft()
$(label Selector).scrollLeft("")
$(label Selector).scrollTop()
$(label Selector).scrollTop("")

事件处理
$(label Selector).on('click',function(e){})给定元素绑定事件处理函数
$(label Selector).on('click','li',function(e){})事件委托
$(label Selector).one('click',function(e){})只能处理一次事件
function functionName(){}
$(label Selector).off('click',function)

鼠标事件
$(label Selector).click(function(){})点击
$(label Selector).hover(function(){},function(){})滑入画出
$(label Selector).mouseenter(function(){})滑入
$(label Selector).mouseleave(function(){})滑出
$(label Selector).mousemove(function(){})移动，防抖和节流
$(label Selector).mouseout(function(){})滑出，事件冒泡
$(label Selector).mouseover(function(){})滑入，事件冒泡

表单事件
$(.input).fucus(function(){})
$(.input).blur(function(){})
$(.input).change(function(){})
$("form").submit(function(){})

键盘事件
$(.input).keydown(function(){})
$(.input).keyup(function(){})
$(.input).keypress(function(){})
$(.input).keydown(function(){})

浏览器事件
$(window).resize(function(){
    if($(window).width() < 800){
        $("div").css("display","none")；
    }
})
$(window).scroll(function(){
    if($(window).scrollTop() >= $(window).height()){
        console.log("滚动到最底下了")
    }
})

事件对象
$(label Selector).click(function(e){
    e.type
    e.target
    e.currentTarget
    e.preventDefault()
    e.stopPropagation()
})

遍历
$(label Selector).map(function(index,element){})
$(label Selector).each(function(index,element){})
map()返回原始数组，each返沪新的数组
$(label Selector).get(index).innerHtml("")

树遍历
$(label Selector).children("")
$(label Selector).find("")
$(label Selector).parent("")
$(label Selector).next()
$(label Selector).siblings("")
















