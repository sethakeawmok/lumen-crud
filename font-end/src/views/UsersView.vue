<template>
    <table class="table">
    <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Handle</th>
        </tr>
    </thead>
    <tbody>
        <tr v-for="user in users" :key="user.user_id">
                  <td>{{ user.user_id }}</td>
                  <td>{{ user.user_name }}</td>
                  <td>{{ user.user_email }}</td>
                </tr>
    </tbody>
    </table>
</template>

<script>
import axios from "axios";
export default {
  name: 'UsersView',
  data() {
    return {
      users: {},
    };
  },
  methods: {
    loadproducts() {
      axios.get("http://localhost/vuejs-api/rest-api/controllers/ChatUserController.php").then((response) => {
        this.users = response.data;
      });
    },
  },
  mounted() {
    this.loadproducts();
  },
}
</script>
