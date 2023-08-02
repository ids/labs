<script setup>
import { ref } from 'vue'
import axios from 'axios'

const name = ref('Vue.js')

function greet(event) {
  //alert(`Hello ${name.value}!`)
  // `event` is the native DOM event
  //if (event) {
  //  alert(event.target.tagName)
  //}
  axios
  .get("/api")
  .then((response) => {
    name.value = response.data.result;
  }, (error) => {
    console.error(error);
  })

}
</script>

<template>

<div class="pagezone">
  <h2>Experimental</h2>
  <h3>Stuff happens here with {{  name  }}</h3>
  <button @click="greet">Get Some</button>
</div>

</template>

<style scoped>

.pagezone {
  display: block;
  text-align: center;
}

</style>