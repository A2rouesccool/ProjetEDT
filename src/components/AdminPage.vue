<template>
    <div>
        <div class="col-md-6">
            <ListeClasses></ListeClasses>
        </div>
        <div class="col-md-6">
            <ListeProfs></ListeProfs>
        </div>
    </div>
</template>

<script>
import ListeClasses from './ListeClasses'
import ListeProfs from './ListeProfs'

    export default {
        components: {
            ListeClasses,
            ListeProfs
        }
    }
</script>

<style>

</style>