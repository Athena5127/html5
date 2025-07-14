<template>
  <div class="Hello">
    <h3>学习Vue3</h3>
    <p>{{ message }}</p>
    <div>{{ rawHtml }}</div>
    <!-- {{  }}类似于innerText()不会对标签进行识别，对标签进行识别可以用v-html属性 -->
    <div v-html="rawHtml"></div>
    <div v-if=flag>快出来玩</div>
    <div v-else>明天有雨</div>
    <div v-show=flag>快出来玩</div>
    <ul>
      <li v-for="item in items" :key="item.id">{{ item.name }}</li>
    </ul>
    <button v-on:click="clickHandle">按钮</button>
    <button @click="clickHandle">按钮</button>
    <button @click="trigger('hi')">按钮</button>
    <button @click="trigger('what')">按钮</button>
    <ul>
      <li @click="clickItemHandle(item)" v-for="item in items" :key="index">{{ item.name }}</li> 
    </ul>
    <input v-model.lazy.trim="username">
    <p>{{ username }}</p>
    <button @click="clickGetUsername">获取用户名</button>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data() {
    return{
      message: 'Hello, Vue!',
      rawHtml:'<a herf="https:itbaizhan.com">百战</a>',
      flag:true,
      items:[
        {id:1, name:'百战'},
        {id:2, name:'百战'},
        {id:3, name:'百战'},
        {id:4, name:'百战'}
      ],
      username:"",
      password:""

    }
  },
  methods:{
    clickHandle(event){
      event.target.innerHTML = "点击之后"
    },
    trigger(data){
      console.log(data)
    },
    clickItemHandle(item){
      console.log(item)
    },
    clickGetUsername(){
      console.log(this.username)
    }
  }
}
</script>
