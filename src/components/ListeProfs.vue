<template>
    <div>
        <h3>Liste des professeurs :</h3>
        <input class="form-control" id="inputProf" type="text" placeholder="Rechercher...">
        <ul class="list-group" id="listProf">
            <li class="list-group-item">COURTAUD</li>
            <li class="list-group-item">RIOU</li>
            <li class="list-group-item">DUPONT</li>
            <li class="list-group-item">DJAFRI</li>
            <li class="list-group-item">HANNACH</li>
            <li class="list-group-item">SOULABAIL</li>
            <li class="list-group-item">BOURLIER</li>
        </ul>
    </div>
</template>

<script>
import JQuery from 'jquery'
let $ = JQuery
$(document).ready(function(){
  $("#inputProf").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#listProf li").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
export default {
        components: {
            
        }
    }
</script>

<style>

</style>