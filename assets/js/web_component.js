import Vue from 'vue/dist/vue'
import wrapper from "@vue/web-component-wrapper"
import selector from './selector_component'

const templated = Vue.extend({
  mixins: [selector],
  template: `
    <ul>
      <li v-if="customers.length == 0">Carregando...</li>
      <li v-else v-for="c in customers">{{c}} <button @click="select(c)">Selecionar</button></li>
    </ul>
    `
})

const wrapped = wrapper(Vue, templated)

window.customElements.define('customer-selector', wrapped)