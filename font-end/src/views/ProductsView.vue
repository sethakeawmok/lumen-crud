<template>
  <div class="py-3" style="text-align: right;"> <router-link to="/product/add" class="btn btn-success">+ ADD</router-link></div>  
    <table class="table">
    <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Name</th>
          <th scope="col">Category</th>
          <th scope="col">Price</th>
          <th scope="col">QTY</th>
          <th scope="col">ACTION</th>
        </tr>
    </thead>
    <tbody>
        <tr v-for="product in products" :key="product.product_id">
                  <td>{{ product.id }}</td>
                  <td>{{ product.product_name }}</td>
                  <td>{{ product.product_category }}</td>
                  <td>{{ product.product_price }}</td>
                  <td>{{ product.product_qty }}</td>
                  <td>
                    <router-link :to="{ name: 'ProductEdit', params: { product_id: product.id }}" class="btn btn-warning">EDIT</router-link>&nbsp; 
                    <button type="button" class="btn btn-danger" @click="deleteData(product.id)">DELETE</button>
                  </td>
                </tr>
    </tbody>
    </table>

    <div class="overflow-auto py-2">
      <b-pagination
        v-model="ex1CurrentPage"
        :total-rows="ex1Rows"
        :per-page="ex1PerPage"
        @click="changPage(ex1CurrentPage)"
        class="mt-4 justify-content-center"
      >
        <template #first-text><span class="text-success">First</span></template>
        <template #prev-text><span class="text-danger">Prev</span></template>
        <template #next-text><span class="text-warning">Next</span></template>
        <template #last-text><span class="text-info">Last</span></template>
        <template #ellipsis-text>
          <b-spinner small type="grow"></b-spinner>
          <b-spinner small type="grow"></b-spinner>
          <b-spinner small type="grow"></b-spinner>
        </template>
        <template #page="{ page, active }">
          <b v-if="active">{{ page }}</b>
          <i v-else>{{ page }}</i>
        </template>
      </b-pagination>
      <!-- Current page : {{ ex1CurrentPage }} -->
    </div>
  

</template>

<script>
import axios from "axios";
export default {
  name: 'ProductsView',
  data() {
    return {
      products: {},
      ex1CurrentPage: "",
      ex2CurrentPage: "",
      ex1Rows: "",
      ex1PerPage: ""
    };
  },
  methods: {
    loadproducts() {
      axios.get("http://localhost/lumen-crud/public/api/products",{
       action:'fetchAll'
      }).then((response) => {
        this.products = response.data.data;
        console.log(response.data);
        this.ex1CurrentPage = response.data.current_page;
        this.ex2CurrentPage = response.data.current_page;
        this.ex1Rows = response.data.total;
        this.ex1PerPage = response.data.per_page;
      });
    },
    changPage(num){
      axios.get("http://localhost/lumen-crud/public/api/products?page="+num)
      .then((response) => {
        this.products = response.data.data;
        this.ex1CurrentPage = response.data.current_page;
        this.ex2CurrentPage = response.data.current_page;
        this.ex1Rows = response.data.total;
        this.ex1PerPage = response.data.per_page;
      });   
    },
    deleteData(id) {
   
      this.$swal({
        title: 'ยืนยันการลบ สินค้า นี้หรือไม่ ?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
      }).then((result) => {
        
        if (result.isConfirmed) {
          axios.delete("http://lumen-crud.com/api/products/"+id).then(() => {
            this.$swal('Deleted', '', 'success')
            this.loadproducts()
          });  
        }

      });

    }
    
  },
  mounted() {
    this.loadproducts();
  },
}
</script>
