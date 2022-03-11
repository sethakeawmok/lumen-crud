import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import UsersView from '../views/UsersView.vue'
import LoginView from '../views/LoginView.vue'
import ProductsView from '../views/ProductsView.vue'
import ProductAddView from '../views/ProductAddView.vue'
import ProductEditView from '../views/ProductEditView.vue'
import store from '@/store'


const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/login',
      name: 'login',
      component: LoginView,
      beforeEnter: (to, from, next) => {
        if (store.getters['auth/autenticated']){
          return next({
              name: 'products'
          })
        }

        next()
      }
    },
    {
      path: '/products',
      name: 'products',
      component: ProductsView,
      beforeEnter: (to, from, next) => {
        if (!store.getters['auth/autenticated']){
          return next({
              name: 'login'
          })
        }

        next()
      }
      
    },
    {
      path: '/product/add',
      name: 'ProductAdd',
      component: ProductAddView,
      beforeEnter: (to, from, next) => {
        if (!store.getters['auth/autenticated']){
          return next({
              name: 'login'
          })
        }
        
        next()
      }
    },
    {
      path: '/product/edit/:product_id',
      name: 'ProductEdit',
      component: ProductEditView,
      beforeEnter: (to, from, next) => {
        if (!store.getters['auth/autenticated']){
          return next({
              name: 'login'
          })
        }
        
        next()
      }
    },
    {
      path: '/users',
      name: 'users',
      component: UsersView,
      beforeEnter: (to, from, next) => {
        if (!store.getters['auth/autenticated']){
          return next({
              name: 'login'
          })
        }
        
        next()
      }
    }
  ]
})

export default router