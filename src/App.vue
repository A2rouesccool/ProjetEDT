<template>
  <div id="app">
    <TopBar/>
    <router-view></router-view>
  </div>
</template>

<script>
import TopBar from './components/TopBar'

export default {
  name: 'App',
  components: {
    TopBar
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
}
</style>
