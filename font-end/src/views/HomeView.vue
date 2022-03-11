<template>
    <div>
        {{authenticated}}
         {{user}}
    </div>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
  name: 'HomeView',
  computed: {
      ...mapGetters({
          authenticated: 'auth/autenticated',
          user: 'auth/user'
      })
  }
}
</script>