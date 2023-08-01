<script setup>
import { RouterLink, RouterView } from 'vue-router'
import Header from './components/HeaderBlock.vue'
</script>

<template>
  <header>
    <Header msg="IDStudios Labs" />
  </header>

  <RouterView />
</template>

<style scoped>
header {
  line-height: 1.5;
  max-height: 100vh;
}


header {
  display: inline-block;
  text-align: center;
  padding: 20px;
  align-self: flex-start;
}

</style>
