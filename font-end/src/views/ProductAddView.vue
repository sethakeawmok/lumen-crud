<template>
  <div>
    <div class="mb-3">
    <label for="product_name" class="form-label">Name</label>
    <input type="text" class="form-control" id="name" name="product_name"  v-model="product.name">
  </div>
  <div class="mb-3">
    <label for="product_detail" class="form-label">Detail</label>
    <textarea class="form-control" id="product_detail" name="product_detail" rows="3" v-model="product.detail"></textarea>
  </div>
  <div class="mb-3">
    <label for="product_barcode" class="form-label">Barcode</label>
    <input type="text" class="form-control" id="product_barcode" name="product_barcode" v-model="product.barcode">
  </div>
  <div class="mb-3">
    <label for="product_qty" class="form-label">QTY</label>
    <input type="text" class="form-control" id="product_qty" name="product_qty" v-model="product.qty">
  </div>
  <div class="mb-3">
    <label for="product_price" class="form-label">Price</label>
    <input type="text" class="form-control" id="product_price" name="product_price" v-model="product.price">
  </div>
  <div class="mb-3">
    <label for="product_image" class="form-label">Image</label>
    <input type="text" class="form-control" id="product_image" name="product_image" v-model="product.image">
  </div>
  <div class="mb-3">
    <label for="product_category" class="form-label">Category</label>
    <input type="text" class="form-control" id="product_category" name="product_category" v-model="product.category">
  </div>
  </div>


<input type="button" class="btn btn-success" @click="submitData" value="Submit" />
<router-link to="/products" class="btn btn-warning" style="float: right;">Cancel</router-link>
</template>

<script>
import axios from "axios";
export default {
  name: 'ProductsView',
  data() {
    return {
      product: {
        name: "",
        detail: "",
        barcode: "",
        qty: "",
        price: "",
        image: "",
        category: "",
      },
    };
  },
  methods: {
    submitData() {
      let self = this;
      axios.post('http://lumen-crud.com/api/products', {
        action:'insert',
        product_name:this.product.name, 
        product_detail:this.product.detail,
        product_barcode:this.product.barcode, 
        product_qty:this.product.qty,
        product_price:this.product.price, 
        product_image:this.product.image,
        product_category:this.product.category
      }).then(function(){
        self.$swal('บันทึกข้อมูลสำเร็จ', '', 'success')
        self.$router.push({ name: 'products' })
        //console.log(response);
      });
    }

  }
}
</script>
