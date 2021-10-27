<template>
<div class="accordion">
    <div class="title" @click="open()">
    <slot name="title"></slot>
    <transition name="rotate" mode="out-in">
        <i class="fas fa-chevron-up" v-if="isOpen" key="rotate1"></i>
        <i class="fas fa-chevron-down" v-else key="rotate2"></i>
    </transition>
    </div>
    <transition name="open">
    <div class="accordion-content" v-if="isOpen">
        <slot name="content"></slot>
    </div>
    </transition>
</div>
</template>

<style>
@keyframes open {
  0% {
    opacity: 0;
    transform: translateY(-5px);
  }
  100% {
    opacity: 1;
    transform: translateY(0px);
  }
}
.open-enter-active {
  animation: open .2s;
}
.open-leave-active {
  animation: open .2s linear reverse;
}

@keyframes rotate {
  0% {
    transform: rotate(180deg);
  }
}
.rotate-enter-active {
  animation: rotate .2s linear;
}

.accordion {
  max-width: 70%;
  margin: 10px auto;
}
.title:hover {
  opacity: .8;
  cursor: pointer;
}
.title {
  margin-bottom: 10px;
  background-color: #eee;
  padding: 15px;
  border-radius: 5px;
}
.title>div {
  display: inline-block;
  font-weight: bold;
}
.title i {
  float: right;
  line-height: 1.3;
}
.content {
  padding: 0 15px;
  margin-bottom: 10px;
}
</style>

<script>
  export default {
    data () {
      return {
        isOpen: false
      }
    },
    methods: {
        open: function () {
            this.isOpen = !this.isOpen;
        }
    }
  }
</script>
