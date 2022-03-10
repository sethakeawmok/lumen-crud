import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import VueSweetalert2 from 'vue-sweetalert2'
import BootstrapVue3 from 'bootstrap-vue-3'
import store from './store'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue-3/dist/bootstrap-vue-3.css'

import 'sweetalert2/dist/sweetalert2.min.css';
import axios from 'axios'

require('@/store/subscriber')

axios.defaults.baseURL = 'http://localhost/lumen-crud/public/'

store.dispatch('auth/attempt', localStorage.getItem('token'))

const app = createApp(App)

app.use(BootstrapVue3)

app.use(VueSweetalert2)

app.use(store)
app.use(router)

app.mount('#app')

