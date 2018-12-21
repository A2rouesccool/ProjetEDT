<template>
    <div class="agenda-container">
        <JourElement jour="Lundi" numJour="1"></JourElement>
        <JourElement jour="Mardi" numJour="2"></JourElement>
        <JourElement jour="Mercredi" numJour="3"></JourElement>
        <JourElement jour="Jeudi" numJour="4"></JourElement>
        <JourElement jour="Vendredi" numJour="5"></JourElement>
        <JourElement jour="Samedi" numJour="6"></JourElement>
    </div>
</template>

<script>
import JourElement from './JourElement'

    export default {
        components: {
            JourElement
        }
    }
</script>

<style>
.agenda-container {
  height: calc(100vh - 50px);
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  grid-template-rows: repeat(43, 1fr);
  grid-gap: 0px;
  grid-auto-rows: minmax(100px, auto);
}
.agenda-container div{
    border: 0.5px solid grey;
    text-align: center;
}
</style>