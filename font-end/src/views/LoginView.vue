<template>
<div>
<main class="form-signin">
    <h1 class="h3 mb-3 mt-3 fw-normal">Please sign in</h1>
<form @submit.prevent="login">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput" v-model="form.username">
      <label for="floatingInput">Username</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" v-model="form.password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary"  type="submit">Sign in</button>
    </form>
</main>
</div>
  

</template>

<script>
import axios from 'axios'
import { mapActions } from 'vuex'

export default {
  name: 'LoginView',
  data() {
    return {
      form: {
        username: "",
        password: ""
      }
    };
  },
  methods: {
    ...mapActions({
      signIn: 'auth/signIn'
    }),
    login() {
      //let self = this;
      axios.get('http://lumen-crud.com/me',{
        
                    headers: {
                        'Authorization': 'Bearer 444444444444'
                    }
      }).then(function(response){
        console.log(response);
      });

      //this.signIn(this.form)
    }
    
  },
  mounted() {
  },
}
</script>


