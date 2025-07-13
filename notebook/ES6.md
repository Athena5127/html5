var 函数及作用域，在if语句内定义全局生效，在function语句内定义则只在function语句内生效
let 块级作用域，在花括号内生效，不能变量提升，不能重复声明
const 块级作用域，不能变量提升，不能被改变，必须赋值
const {} = object {}内可以放多个函数，用于变量的解构赋值
用/uxxxx表示字符，xxxx为字符的unicode码点
for……of用于遍历字符串内的每一个字母或数字。称为字符串遍历接口
··为模板字符串，对动态内容使用${}
判断字符串位置有四种办法indexOf，includes(),startsWith(),endsWith()
去除首尾空格为trimStart(),trimEnd()
判断索引位置字母或数字为at()
repeat(num)重复指定字符串
padStart(num,str)，num为补全后字符串长度，str为被用来补全的字符串，padEnd()同理
扩展运算符为三个点，...str，将一个数组转化为用逗号分隔的参数序列
Math.max.apply(null,arr)
Math.man(...arr)
arr1.concat(arr2)可以用[...arr1,...arr2]代替
伪数组有三种，分别为arguments，类似数组的对象，元素集合，这三类类似数组但是不能使用数组方法
Array.from(object)可将伪数组转化为真正的数组从而使用数组的方法
Array.of(num1,num2,num3)用于将一串数字转化为数组
Array(num)开辟num个空间
属性的简洁表示法，属性名表达式在外部声明变量为属性名然后在内部使用[]即可完成属性名的简写，对象扩展运算为党变量为字典时，需要进行解包
var z = {10,20,30}
var n = { z }
console.log(n)
n = { ... z }
console.log(n)
箭头函数主要用于匿名函数的简写，var arr = [] arr.map((index,element) => console.log(element);)，箭头函数的this对象指向定义时上层作用域的this，用于在setTimeout()函数中指向对象内部this
Set数据结构
const s = new Set()
var arr = [10,20,30,40,50]
arr.forEach(x => s.add(x))
for(let i of s){
    console.log(i)
}
Set()用于数组去重
var arr = [10,20,30,40,50]
const s = new Set(arr)
console.log([...s])
或者使用console.log([...new Set(arr)])
Set()用于字符串去重console.log([...new Set(str)].join(""))
s.size用于得到集合的长度
Set()数据方法
const s = new Set()
s.add()
s.delete()
s.has()
s.clear()清空集合内的数据
Promise()对象
function loadImageAsync(url){
    const promise = new Promise(resolve,reject){
        const image = new Image();
        image.src = url;
        image.onload = function(){
            resolve(image)
        };
        image.onerror = function(){
            reject("Could not load at" + url)
        };
    };
    return promise;
}
const promise = loadImageAsync("")
promise.then(function(data){},function(error){})
Ajax实操
const getJSON = function(url){
    const promist = new Promise(funciton(resolve,reject){
        const handler = function(){
            if(this.readystate !== 4){
                return
            };
            if(this.state == 200){
                resolve(this.response)
            }else{
                reject(new Error(this.statusText))
            }
        };
        const client = new XMLHttpRequest();
        client.open("GET",url);
        client.onreadystatechange = handler;
        client.responseType = "json";
        client.setResponseHeader("Accept","application/json");
        client.send();
    })
    return promise
}
getJson(https://www.itbaizhan.com/course/id/59505.html).then(function(data){console.log(data)},function(error){console.log(data)})

Async函数
const timeout = function(ms){
    const promise = new Promise(resolove,reject){
        setTimeout(function(){
            console.log("定时器");
            resolve();
        }
        return promise
    }
}
async function asyncPrint(ms,value){
    await timeout(ms)
    console.log(value)
}
asyncPrint(100,"hello")
<!-- async用于接口的同步执行，且使用await后可以直接用console.log()读取promise -->
function ajax(url){
  return new Promise(function(resolve,reject){
    $.getJSON(url,function(result){
      resolve(result)
     },function(error){
      reject(error) 
     })
   })
}


async function getInfo(){
  let ids = await ajax("http://iwenwiki.com/api/generator/list.php")
  let names = await ajax("http://iwenwiki.com/api/generator/id.php?id="+ids[0])
  let infos = await ajax("http://iwenwiki.com/api/generator/name.php?name=" + names.name)
  console.log(infos);
}

getInfo();

Class基本语法
ES5中class语法
function Person(name,age){
    this.name = name
    this.age = age
};
function Person.prototype.getName(){
    console.log(this.name)
};
var p = new Person(10,20);
p.getName();
ES6中class语法
Class Person{
    constructor(name,age){
        this.name = name;
        this.age = age;
    };
    getName(){
        <!-- 无需声明function -->
        console.log(this.name)
    }
}
var p = new Person(10,20)
p.getName()
类必须具有constructor方法，如果没有显示定义，则constructor(){}也需要被添加
类不存在变量提升，必须先声明后提升，但是function可以

Class属性与方法
实例属性与实例方法，实例属性在constructor(){}中声明，实例方法紧随其后，不用function声明
静态属性与静态方法，静态方法为在方法名前面加static，静态属性为Class本身的属性，比如上述Person.name()为Person
静态方法不能创建实例对象，否则会报错