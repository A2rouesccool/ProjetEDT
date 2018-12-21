<template>
    <div class="agenda-jour" v-bind:id="'jour'+this.jour">
        <div class="intitule-jour">{{ this.jour }}</div>
        <div v-for="event in eventID">
            <Evenement :idEvent="event['id']"/>
        </div>
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
        this.getEvenements(this.numJour);
    },
    methods: {
        getEvenements: function(numJour) {
        let self = this;
        this.axios.get("http://localhost:80/edt/getEvenements.php", {
            params: {
                numJour: numJour
            }
        })
            .then(function(response, vueElem) {
            self.$data.eventID = response.data.eventID;
            }).catch(function(error) {
            console.log(error);
            });
        },
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
    },
    data: function () {
        return {
        eventID: []
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