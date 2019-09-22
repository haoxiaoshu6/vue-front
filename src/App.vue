<template>
  <div id="app">
    <ul>
      <li v-for="item in users" :key="item.id">{{item.name}}</li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'app',
  data(){
    return{
      users:[]
    }
  },
  mounted(){
    axios.get('http://121.41.55.236:3000/api/user').then(res => this.users = res.data)
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
