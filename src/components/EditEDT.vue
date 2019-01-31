<template>
    <div>
        <h5>Pour ajouter un cours, <button type="button" v-on:click="openModal" class="btn btn-primary">Ajouter un cours</button></h5>
        <h5>Pour modifier un cours, cliquez sur son étiquette dans l'emploi du temps</h5>
        <Agenda></Agenda>

        <div class="modal" id="modalNewCours">
            <div class="modal-dialog">                
                <div class="modal-content">                  
                    <form action="#" method="POST" id="ajouterCours">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4 class="modal-title">Ajouter un cours</h4>
                                </div>
                                <div class="col-md-6">
                                    <button type="button" class="close" v-on:click="closeModal">&times;</button>
                                </div>
                            </div>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <input type="text" class="form-control" name="type" id="type" placeholder="Type de cours"/>
                            <input type="text" class="form-control" name="matiere" id="matiere" placeholder="Matière"/>
                            <input type="text" class="form-control" name="prof" id="prof" placeholder="Professeur"/>
                            <input type="text" class="form-control" name="salle" id="salle" placeholder="Nom de salle"/>
                            <input type="text" class="form-control" name="heureDebut" id="heureDebut" placeholder="Heure de début"/>
                            <input type="text" class="form-control" name="heureFin" id="heureFin" placeholder="Heure de fin"/>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" v-on:click="closeModal">Close</button>                                
                            <button type="submit" class="btn btn-primary">Ajouter un cours</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</template>

<script>
import JQuery from 'jquery'

import Agenda from './Agenda'

    export default {
        components: {
            Agenda
        },
        methods: {
            openModal: function() {
                document.getElementById("modalNewCours").style['display'] = 'initial';
            },
            closeModal: function() {
                document.getElementById("modalNewCours").style['display'] = 'none';
            }
        }
    }
</script>

<style>

</style>