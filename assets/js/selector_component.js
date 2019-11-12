import Vue from 'vue/dist/vue'

export default Vue.component('customer-selector', {
  props: ['redirectTo'],
  data() {
    return {
      customers: []
    }
  },
  created() {
    const vm = this
    setTimeout(() => {
      vm.customers = ['João', 'José']
    }, 1000);
  },
  methods: {
    select(name) {
      location.assign(this.redirectTo + '?customer=' + name)
    }
  }
})