<template>
    <div class="agenda-jour" v-bind:id="'jour'+this.jour">
        <div class="intitule-jour">{{ this.jour }}</div>
        <div v-for="event in eventID">
            <EvenementMobile :idEvent="event['id']"/>
        </div>
    </div>
</template>

<script>
import EvenementMobile from './EvenementMobile'

export default {
    props: ['jour', 'numJour'],
    components: {
        EvenementMobile
    },
    mounted: function() {
        this.initializeCols();
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
        initializeCols: function() {
            var id = "jour"+this.jour;
            var jourElement = document.getElementById(id);
            for(var i = 0; i < 42; i++) {
                var col = document.createElement("div");
                col.className = "col-element";
                /*col.style['grid-column'] = i+" / "+i;
                col.style['grid-row'] = this.numJour + " / " +this.numJour;*/
                col.id = this.jour+i;
                jourElement.appendChild(col);
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
  width: 100px;
  margin: auto;
  font-size: 1vw;
  text-align: center !important;
}

.agenda-jour .col-element {
    border-bottom: 0.1px solid grey;
    height:calc((100vh - 80px) / 6);
    width: calc((100vw - 100px) / 43);
}

.agenda-jour {
    height:calc((100vh - 80px) / 6);
}

</style>