<template>
    <div class="evenement">
        <div class="evenement-header">
            <span>{{ typeCours }} | {{ heureDebut }}h{{ quartDheureDebut*15 }} - {{ heureFin }}h{{ quartDheureFin*15 }}</span>
        </div>
        <div class="evenement-body">
            <div class="evenement-center">
                <p class="matiere"><b>{{ intituleCours }}</b></p>
                <p class="professeur">{{ nomProfesseur }}</p>
                <p class="lieu">{{ nomSalle }}</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['idEvent'],
    mounted: function() {
        this.getEvenementsData(this.idEvent);
    },
    methods: {
        getEvenementsData: function(id) {
            let self = this;
            this.axios.get("http://localhost:80/edt/getEvenementsData.php", {
                params: {
                    id: id
                }
            })
            .then(function(response, vueElem) {
                var evt = response.data.event[0];
                self.$data.heureDebut = evt.heureDebut;
                self.$data.quartDheureDebut = evt.quartDheureDebut;
                self.$data.heureFin = evt.heureFin;
                self.$data.quartDheureFin = evt.quartDheureFin;
                self.$data.nomProfesseur = evt.nomProf;
                self.$data.intituleCours = evt.nomCours;
                self.$data.numJour = evt.jour;
                self.$data.nomSalle = evt.Salle;
                self.$data.typeCours = evt.type;
                self.$data.startElement = ((((parseInt(self.$data.heureDebut))-8)*4)+parseInt(self.$data.quartDheureDebut)).toString();
                self.$data.endElement = (((((parseInt(self.$data.heureFin))-8)*4)+parseInt(self.$data.quartDheureFin))).toString();
                self.$data.duree = self.$data.endElement - self.$data.startElement;
                self.setJour();
                self.positionElement();

            }).catch(function(error) {
            console.log(error);
            });
        },
        positionElement: function() {
            var elem = this.$data.startElement;
            var elemBody = this.$el.getElementsByClassName("evenement-body")[0];
            var elemHeader = this.$el.getElementsByClassName("evenement-header")[0];
            var referenceNode = document.getElementById(this.$data.jour+elem);
            this.$el.style['grid-column'] = this.numJour + " / " + this.numJour;
            this.$el.style['grid-row'] = this.$data.startElement + " / " + this.$data.endElement;
            this.$el.style['height'] = "calc((100vh - 80px) / (42/" + this.$data.duree + "))";
            elemBody.style['height'] = "calc(((100vh - 80px) / (42/" + this.$data.duree + ")) - 25px)";
            elemHeader.classList += " " + this.$data.typeCours.toLowerCase() + "-color";
            referenceNode.parentNode.insertBefore(this.$el, referenceNode.nextSibling);
            this.removeElements();
        },
        removeElements: function() {
            for(var i = parseInt(this.$data.startElement); i < parseInt(this.$data.endElement); i++) {
                document.getElementById(this.jour+i).remove();
            }
        },
        setJour: function() {
            var numJour = this.$data.numJour;
            switch (numJour) {
            case '1':
                this.$data.jour = "Lundi";
                break;
            case '2':
                this.$data.jour = "Mardi";
                break;
            case '3':
                this.$data.jour = "Mercredi";
                break;
            case '4':
                this.$data.jour = "Jeudi";
                break;
            case '5':
                this.$data.jour = "Vendredi";
                break;
            case '6':
                this.$data.jour = "Samedi";
                break;
            default:
                console.log('Sorry, we are out of ' + numJour + '.');
            }
        }
    },
    data: function() {
        return {
            heureDebut: null,
            quartDheureDebut: null,
            heureFin: null,
            quartDheureFin: null,
            duree: null,
            numJour: null,
            jour: null,
            duree: 6,
            typeCours: null,
            intituleCours: null,
            nomProfesseur: null,
            nomSalle: null,
            startElement: null,
            endElement: null
        }
    }
}
</script>

<style>
.agenda-jour .evenement {
    background-color:white;
    height:calc((100vh - 80px) / (42/6));
    border-radius: 5%;
    border: 0px 0px 1px 1px solid grey;
}

.evenement-header {
    height:25px;
    text-align: center;
    font-size: 1.5rem;
    line-height: 25px;
}

.evenement-body {
    height:calc(((100vh - 80px) / (42/6)) - 25px);
    display: table;
    width: 100%;
}

.evenement-center {
    display: table-cell;
    vertical-align: middle;
    width: 100%;
}

.evenement-body p {
    padding: 0;
    margin: 0;
    width: 100%;
}

.matiere {
    font-size: 1.2vw;
}

.professeur {
    font-size: 1vw;
}

.lieu {
    font-size: 0.75vw;
}

.examen-color {
    background-color: #2ecc71;
}

.cm-color {
    background-color: #2c82c9;
}

.td-color {
    background-color: #00b5cc;
}

.tp-color {
    background-color: #89c4f4;
}


</style>
