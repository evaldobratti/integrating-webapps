import Vue from 'vue/dist/vue'
import selector from './selector_component'

const HostedComponent = Vue.component('hosted-component', Vue.extend({
  mixins: [selector],
  template: "#hostedTemplate"
}))

new Vue({
  components: {HostedComponent},
  el: "#hostedComponent"
})  