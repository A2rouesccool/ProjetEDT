<template>
    <div>
        <h3>Liste des classes :</h3>
        <input class="form-control" id="myInput" type="text" placeholder="Rechercher...">
        <ul class="list-group" id="myList">
            <li class="list-group-item">L3INFO</li>
            <li class="list-group-item">L3MIAI</li>
            <li class="list-group-item">L3MIAA</li>
            <li class="list-group-item">M1MIAI</li>
            <li class="list-group-item">M1MIAA</li>
            <li class="list-group-item">M2MIAI</li>
            <li class="list-group-item">M2MIAA</li>
        </ul>
    </div>
</template>

<script>
import JQuery from 'jquery'
let $ = JQuery
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myList li").filter(function() {
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