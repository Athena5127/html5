<!-- JavaScript为轻量级脚本语言，不具备开发操作系统能力，主要由语句和标识符构成，变量为最常用的标识符，JavaScript的保留关键字不能作为变量，其对内容进行读取有三种方式，alt("弹出框")/document.write("输出到页面")/console.log("输出到控制台")，将其引入文件也有三种方式，创建script标签嵌入HTML文档，从本地路径引入，从网页引入，通过ctrl+/来对其内容进行注释 -->

<!-- JS的原始数据类型有数值、字符串、boolean，除此之外还有对象、null和undefined，null和undefined都表示没有，null类型为对象，undefined类型为undefined，null代表对象没有，undefined代表数值没有，可以用typeof 函数返回变量的数据类型 -->

条件运算符
if (condition){
    result
}else{
    result1
}

三元运算符
var result= num % 2 === 0?"偶数":"奇数"
console.log(result)
Switch语句
switch(){
    case value1：
    result1;
    break;
    case value2:
    result2;
    break;
    default:
    result3
}

字符串方法
<!--
str.charAT(num)返回字符串对应位置字母或数字
str.indexOf(str)返回字符串对应子字符串位置
str.split("")返回以""分割的字符串对应数组
str.trim()去除字符串左右两端的空格
str.concat("")连接多个字符串
str.substring(startnum,endnum)返回指定开始和结束位置的子字符串
str.substr(startnum,length)返回指定开始位置和长度的子字符串
 -->

数组方法
<!--
Array.isArray(arr)判断一个数据类型是否为数组
arr.pop()删除数组的最后一个元素并返回该元素
arr.push("")在数组的末尾添加元素并返回该数组长度
arr.shift()删除数组的第一个元素并返回该元素
arr.unshift("")在数组的开始添加元素并返回数组长度
arr.concat("")合并数组
arr.join("")将数组中的元素以指定参数相连
arr.reverse()翻转数组中的元素
arr.indexOf("")返回指定元素出现的位置，添加第二个参数表示搜索开始的位置

-->
document获取元素方法
var variable = document.getElementsByClassName()[]
var variable = document.getElementsByName()[]
var variable = document.getElementsById()[]
var variable = document.getElementsByTagName()[]
var variable = document.querySelector()
var variable = document.querySelectorAll()
<!-- 前者返回第一个节点，后者返回匹配到的所有节点 -->

document创建元素方法
var variable1 = document.createElement("")
var variable2 = document.createTextNode("")
variable1.appendChild(variable2)
var variable3 = document.createAttribute("")
variabl3e.value = ""
var variable4 = document.getElementsById("")
variable4.setAttribute(variable3)

element对象，属性
var variable = document.querySelector("")
variable.id
variable.class
variable.classList.add()添加新元素
variable.classList.remove()删除元素
variable.classList.toggle()无则添加新元素，有则删除该元素
variable.classList.contains()是否包含该元素
variable.innerHTML = ""
variable.innerText = ""
<!-- 前者可识别HTML标签，后者会将引号内内容直接识别为字符串 -->

Element获取元素位置
Element.clientHeight
Element.clientWidth需要减去垂直滚动条的宽度
Element.scrollHeight
Element.scrollWidth
Element.offsetHeight
Element.offsetWidth
Element.offsetLeft
Element.offsetTop
Element.scrollLeft
Element.scrollTop
document.documentElement.clientHeight
document.body.clientHeight

CSS操作方法
label.Attribute('style',property1,property2)
var variable = document.querySelector('').style
variable.property = ''
variable.cssText = ''
<!-- 前者设置单个属性，后者对所有属性进行设置 -->

事件处理程序
HTML事件，在标签中定义onclick = function1，于script标签中对其进行渲染，缺点是HTML和CSS不分离
DOM0事件，在script标签中使label.onclick = function(){console.log = ''}，缺点是会被覆盖
DOM2事件，在script标签中使label.addEventListener('click',function1) 

事件类型之鼠标事件
var variable = document.getElementsById("")
variable.onclick = function(){command}
variable.ondblclick = function(){command}
variable.onmouseup = function(){command}
variable.onmousedown = function(){command}
variable.onmouseenter = function(){command}
variable.onmouseleave = function(){command}
variable.onmouseover = function(){command}
variable.onmouseout = function(){command}
variable.onwheel = function(){command}

Event对象属性
event.target返回当前对象所在的HTML节点
event.type返回当前事件类型，比如点击为click

Event对象方法
event.preventDefault()阻止默认事件
event.stopPropagation()阻止事件冒泡

事件类型之键盘事件
var variable = document.getElementsById("")
variable.onkeydown = function(e){command}键盘按下
variable.onkeyup = function(e){command}键盘抬起
variable.onkeypress = function(e){command}有效字符
variable.onkeydown = function(e){if(keycode === 13){console.log = ""}}遇到唯一标识触发事件
variable.onkeydown = function(e){console.log = e.keycode}得到每个键的唯一标识

事件类型之表单事件
submit和reset事件，都作用于表单，而非表单下成员
<!-- 
<form id="myFrom" onsubmit="submitHandle">
    <button onclick="resetHandle">重置数据</button>
    <button>提交</button>
</form>
<script>
    var variable = document.getElementsById("myFrom")
    function resetHandle(){
        variable.reset()
    }
    function submitHandle(){
        console.log("提交")
    }
 -->
<input id="username">
<input id="password">
<script>
    var username = document.getElementsById("username")
    var password = document.getElementsById("password")
    username.oninput = function(e){
        console.log(event.target.value)
    }
    // 获取输入内容
    username.onselect = function(e){
        console.log("选中了")
    }
    username.addListener('select',function(e){console.log(e.type)},false)
    password.onchange =function(e){
        console.log(e.target.value)
    }

事件代理（事件委托）
var variable = document.getElementsById("")
variable.addListener('click',function(e){
    if(e.target.targetName.toLowerCase === "li"){
        console.log(e.target.innerHTML)
    }
})

定时器setTimeout
setTimeout(function(){}|code,delay)定时器方法
var user = {
    name = "yq",
    getName = function(){
        console.log(this.name)
    }
}
user.getName()
var user = {
    name = "qy",
    getName = function(){
        setTimeout(function(){
            console.log(this.name)
        },3000)
    }
}
user.getName()
var user = {
    name = "ly",
    getName = function(){
        var that = this；
        setTimeout(function(){
            console.log(that.name)
        },3000)
    }
}
user.getName()

定时器setInterval
var variable = docunment.getElementsById("")
setinterval(function(){},delay)用法和setTimeout类似，但会进行无限次的定时执行，故需要设置条件参数









