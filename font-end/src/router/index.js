import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import UsersView from '../views/UsersView.vue'
import LoginView from '../views/LoginView.vue'
import ProductsView from '../views/ProductsView.vue'
import ProductAddView from '../views/ProductAddView.vue'
import ProductEditView from '../views/ProductEditView.vue'


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
      component: LoginView
    },
    {
      path: '/products',
      name: 'products',
      component: ProductsView
    },
    {
      path: '/product/add',
      name: 'ProductAdd',
      component: ProductAddView
    },
    {
      path: '/product/edit/:product_id',
      name: 'ProductEdit',
      component: ProductEditView
    },
    {
      path: '/users',
      name: 'users',
      component: UsersView
    }
  ]
})

export default router