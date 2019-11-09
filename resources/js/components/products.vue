<template>
<div class="card">
    <div class="card-header">All Products</div>

    <div class="card-body">

    <div class="card-body">
        <form method="POST" @submit.prevent="addProduct()">
            <input type="hidden" v-model="product.id">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Product Name</label>
                            <input type="text" class="form-control" id="product_name" v-model="product.name">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Product Price</label>
                            <input type="number" class="form-control" id="product_price" v-model="product.price">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Stock Quantity</label>
                            <input type="number" class="form-control" id="product_quantity" v-model="product.quantity">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <br>
                            <input style="margin-top: 6px;" type="submit" class="btn btn-block  btn-success float-right" v-model="this.button">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="card-body">
        <table class="table">
            <thead>
                <th>Product Name</th>
                <th>Product Current Price</th>
                <th>Product Stock</th>
                <th>Action</th>
            </thead>
            <tbody>
                <tr v-for="(product, index) in products">
                    <td><a v-bind:href="'/product/price-timeline/'+ product.id">{{product.name}}</a></td>
                    <td>{{product.price}}</td>
                    <td>{{product.quantity}}</td>
                    <td>
                        <button class="btn btn-danger btn-sm" @click="deleteProduct(product.id)">Delete</button>
                        <button class="btn btn-info btn-sm" @click="editProduct(product)">Edit</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    </div>
</div>
</template>

<script>
export default {
    methods:{
        getProducts(){
            axios.get('/products')
              .then((response) => {
                this.products = response.data;
              });
        },
        deleteProduct(id){
            axios.delete('/products/' + id)
                .then((response) => {
                    this.getProducts();
                })
                .catch((error) => {
                    console.log(error);
                });
        },
        editProduct(product){
            this.product.id = product.id;
            this.product.name = product.name;
            this.product.price = product.price;
            this.product.quantity = product.quantity;
            this.edit = true;
            this.button = 'Update Product';
            this.$el.querySelector('#product_name').focus();
        },
        addProduct(){
            if(this.edit == false)
            {
            axios.post('/products', {
                id: this.product.id,
                name: this.product.name,
                price: this.product.price,
                quantity: this.product.quantity
              })
              .then((response)=> {
                alert("Product Added");
              })
              .then(()=>{
                this.getProducts();
              })
              .catch((error)=> {
                console.log(error);
              });
            }
            else
            {
                axios.put('products/'+ this.product.id, {
                    id: this.product.id,
                    name: this.product.name,
                    price: this.product.price,
                    quantity: this.product.quantity
                  })
                  .then((response)=> {
                    alert("Product Updated");
                  })
                  .then(()=>{
                    this.getProducts();
                  })
                  .catch((error)=> {
                    console.log(error);
                  });
            }
            this.product.id = '';
            this.product.name = '';
            this.product.price = '';
            this.product.quantity = '';
            this.button = "Add Product";

        }
    },
    data(){
        return {
            products : [],

            product: {
                id: '',
                name : '',
                price: '',
                quantity: ''
            },
            edit: false,
            button : 'Add Product'
        }
    },
    created() {
        this.getProducts();
    }
}
</script>
