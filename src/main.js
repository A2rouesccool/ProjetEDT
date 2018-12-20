// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.

require('../node_modules/bootstrap/dist/css/bootstrap.min.css')
require('../node_modules/jquery/dist/jquery.js')

import Vue from 'vue'
import VueRouter from 'vue-router'
import App from './App'
import SignInPage from './components/SignInPage'
import Agenda from './components/Agenda'


Vue.use(VueRouter);

Vue.config.productionTip = false

const routes = [{
        path: '/',
        name: 'SignIn',
        component: SignInPage
    },
    {
        path: '/home',
        name: 'Agenda',
        component: Agenda
    }
]

const router = new VueRouter({
        routes // short for `routes: routes`
    })
    /* eslint-disable no-new */
new Vue({
    el: '#app',
    router,
    components: { App },
    template: '<App/>'
})