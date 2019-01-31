<template>
<div id="login">
  <h1>Sign in</h1>
  <input class="form-control" type="text" name="username" v-model="input.username" placeholder="Username" />
  <button class="btn btn-primary" id="loginButton" type="button" v-on:click="login()">Login</button>
</div>
</template>

<script>
export default {
    name: 'SignInPage',
    data() {
        return {
            input: {
                username: ""
            }
        }
    },
    methods: {
        login() {
            if(this.input.username != "") {
                if(this.input.username == this.$parent.mockAccount.username) {
                    this.$emit("authenticated", true);
                    this.$router.replace({ name: "Agenda" });
                } else {
                    console.log("The username is incorrect");
                }
            } else {
                console.log("A username must be present");
            }
        }
    }
}
</script>

<style scoped>
#login {
  width: 500px;
  border: 1px solid #CCCCCC;
  background-color: #FFFFFF;
  margin: auto;
  margin-top: 200px;
  padding: 10px;
  padding-top: 10px;
}
#loginButton {
  margin-top: 10px;
  float: inherit;
}
h1 {
  margin-top: 0px;
}
</style>
