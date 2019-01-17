<template>
    <div class="agenda-container">
        <JourElementMobile jour="Lundi" numJour="1"></JourElementMobile>
        <JourElementMobile jour="Mardi" numJour="2"></JourElementMobile>
        <JourElementMobile jour="Mercredi" numJour="3"></JourElementMobile>
        <JourElementMobile jour="Jeudi" numJour="4"></JourElementMobile>
        <JourElementMobile jour="Vendredi" numJour="5"></JourElementMobile>
        <JourElementMobile jour="Samedi" numJour="6"></JourElementMobile>
    </div>
</template>

<script>
import JourElementMobile from './JourElementMobile'

    export default {
        components: {
            JourElementMobile
        }
    }
</script>

<style>
.agenda-container .agenda-jour {
  display: grid;
  grid-template-rows: repeat(6, 1fr);
  grid-template-columns: repeat(43, 1fr);
  grid-gap: 0px;
  grid-auto-columns: minmax(100px, auto);
}
.agenda-container .agenda-jour .col-element {
    border: 0.5px solid grey;
    text-align: center;
}
.agenda-container .agenda-jour .intitule-jour {
    border: 0.5px solid grey;
    text-align: center;
    height:calc((100vh - 80px) / 6);
    line-height: calc((100vh - 80px) / 6);
}

</style>