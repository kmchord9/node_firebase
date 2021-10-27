<template>
  <div id="app">
    <ul class="grid">
      <li class="grid__item">
      <Accordion>
        <div slot="title">chart1</div>
        <div class="content" slot="content">
          <p><RandomChart/></p>
        </div>
      </Accordion>
      </li>
      <li class="grid__item">
      <Accordion>
        <div slot="title">chart1</div>
        <div class="content" slot="content">
          <p><RandomChart/></p>
        </div>
      </Accordion>
      </li>

    </ul>
  </div>
</template>

<style>
*,
*::before,
*::after {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
ul {
  max-width: 640px;
  padding: 10px;
  margin: 20px auto;
  border: solid 1px #333;
}
li {
  list-style: none;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 10px;
  border: dotted 1px #999;
  text-align: center;
}

/* grid layout */
.grid {
  display: grid;
  grid-gap: 10px;
}
</style>

<script>
import Accordion from '../components/Accordion.vue'
export default {
  components: { Accordion },}
</script>
