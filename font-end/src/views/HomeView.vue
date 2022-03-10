<template>
    <div>
        {{authenticated}}
    </div>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
  name: 'HomeView',
  data() {
      return {
        authenticated: '',
        user: ''
      }
  },
  computed: {
      ...mapGetters({
          authenticated: 'auth/autenticated',
          user: 'auth/user'
      })
  }
}
</script>