<template>
    <div class="agenda-jour" v-bind:id="'jour'+this.jour">
        <div class="intitule-jour">{{ this.jour }}</div>
    </div>
</template>

<script>
import Evenement from './Evenement'

export default {
    props: ['jour', 'numJour'],
    components: {
        Evenement
    },
    mounted: function() {
        this.initializeRows();
    },
    methods: {
        initializeRows: function() {
            var id = "jour"+this.jour;
            var jourElement = document.getElementById(id);
            for(var i = 0; i < 42; i++) {
                var row = document.createElement("div");
                row.className = "row-element";
                row.style['grid-column'] = this.numJour;
                row.style['grid-row'] = "1 / "+i;
                row.id = this.jour+i;
                jourElement.appendChild(row);
            }
        }
    }
}
</script>

<style>
.intitule-jour {
  grid-column: 1;
  grid-row: 1;
  height:25px;
  margin: auto;
}

.agenda-jour .row-element {
    border-bottom: 0.1px solid grey;
    height:calc((100vh - 80px) / 42);
}

</style>