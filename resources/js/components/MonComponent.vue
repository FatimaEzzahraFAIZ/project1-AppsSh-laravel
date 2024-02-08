<template>
    <!-- Le template -->
    <section class="container" >
        <h1>Mon composant MonComponent.vue</h1>
        <p>Clicks : <strong>{{ clicks }}</strong></p>
        <button @click="ajouteClick" >clique sur moi</button>
    </section>
</template>

<style>
    /* le style */
    .container {
        max-width: 960px;
        margin: 0 auto; padding: 40px;
        text-align: center;
        font-family: calibri, arial;
    }
</style>

<script>
    // Le script
    export default {
        name : "mon-component",
        data () {
            return {
                clicks : 0
            }
        },
        methods : {
            // Incrémentation de "clicks"
            ajouteClick () {
                this.clicks++;
            }
        }
    }
</script>