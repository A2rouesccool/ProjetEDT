<template>
  <div id="app">
    <TopBar/>
    <router-link v-if="authenticated" to="/" v-on:click.native="logout()" replace>Logout</router-link>
    <router-view @authenticated="setAuthenticated"></router-view>
  </div>
</template>

<script>
import TopBar from './components/TopBar'

export default {
  name: 'App',
  components: {
    TopBar
  },
  data() {
      return {
          authenticated: false,
          mockAccount: {
              username: "M1MIAA"
          }
      }
  },
  mounted() {
      if(!this.authenticated) {
          this.$router.replace({ name: "SignIn" });
      }
  },
  methods: {
      setAuthenticated(status) {
          this.authenticated = status;
      },
      logout() {
          this.authenticated = false;
      }
  }
}


</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
}
</style>
