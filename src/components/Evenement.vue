<template>
    <div class="evenement">
        <div class="evenement-header">
            <span>{{ typeCours }} | {{ heureDebut }}h{{ quartDheureDebut*15 }} - {{ heureDebut + duree/4 }}h</span>
        </div>
        <div class="evenement-body">
            <p class="matiere"><b>{{ intituleCours }}</b></p>
            <p class="professeur">{{ nomProfesseur }}</p>
            <p class="lieu">{{ nomSalle }}</p>
        </div>
    </div>
</template>

<script>
export default {
    props: ['jour','horaire', 'numJour'],
    mounted: function() {
        this.$data.startElement = (((this.horaire)*4)+this.$data.quartDheureDebut);
        this.$data.endElement = ((((this.horaire)*4)+this.$data.quartDheureDebut) + this.$data.duree);
        
        this.positionElement(this.$data.startElement);
    },
    methods: {
        positionElement: function(elem) {
            var referenceNode = document.getElementById(this.jour+elem);
            this.$el.style['grid-column'] = this.numJour + " / " + this.numJour;
            this.$el.style['grid-row'] = this.$data.startElement + " / " + this.$data.endElement;
            referenceNode.parentNode.insertBefore(this.$el, referenceNode.nextSibling);
            this.removeElements();
        },
        removeElements: function() {
            for(var i = this.$data.startElement; i < this.$data.endElement; i++) {
                document.getElementById(this.jour+i).remove();
            }
        }
    },
    data: function() {
        return {
            heureDebut: 14,
            quartDheureDebut: 3,
            duree: 12,
            typeCours: "EXAMEN",
            intituleCours: "BADA",
            nomProfesseur: "CODDJDJURTAUD",
            nomSalle: "IBGBI 1-108",
            startElement: null,
            endElement: null
        }
    }
}
</script>

<style>
.agenda-jour .evenement {
    background-color:white;
    height:calc((100vh - 80px) / (42/10));
    border-radius: 5%;
    border: 0px 0px 1px 1px solid grey;
}

.evenement-header {
    height:25px;
    text-align: center;
    font-size: 0.75rem;
    line-height: 25px;
}

.evenement-body {
    height:calc(((100vh - 80px) / (42/6)) - 25px);
}

.evenement-body p {
    padding: 0;
    margin: 0;
    width: 100%;
}

.matiere {
    font-size: 1rem;
}

.professeur {
    font-size:0.75rem;
}

.lieu {
    font-size: 0.5rem;
}
</style>
