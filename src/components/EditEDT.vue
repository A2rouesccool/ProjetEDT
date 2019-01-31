<template>
    <div>
        <div class="panel panel-default">
            <form action="#" method="POST" id="ajouterCours">
                <div class="panel-body">
                    <input type="text" class="form-control" name="type" id="type" placeholder="Type de cours"/>
                    <input type="text" class="form-control" name="matiere" id="matiere" placeholder="Matière"/>
                    <input type="text" class="form-control" name="prof" id="prof" placeholder="Professeur"/>
                    <input type="text" class="form-control" name="salle" id="salle" placeholder="Nom de salle"/>
                    <input type="text" class="form-control" name="heureDebut" id="heureDebut" placeholder="Heure de début"/>
                    <input type="text" class="form-control" name="heureFin" id="heureFin" placeholder="Heure de fin"/>
                </div>
                <div class="panel-footer">
                    <button type="button" class="btn btn-link" data-dismiss="modal">Annuler</button>
                    <button type="submit" class="btn btn-primary">Ajouter un cours</button>
                </div>
            </form>
        </div>
        <h5>Pour ajouter un cours, <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
  Open modal
</button>
</h5>
        <h5>Pour modifier un cours, cliquez sur son étiquette dans l'emploi du temps</h5>
        <Agenda></Agenda>

        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Modal Heading</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        Modal body..
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

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
        }
    }
</script>

<style>

</style>