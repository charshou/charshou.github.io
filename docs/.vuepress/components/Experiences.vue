<template>
    <div>
        <Experience :key="experience.name" v-for="experience in experiences" :experience="experience" />
    </div>
</template>

<script>
import Experience from "./Experience.vue"
import { experiences } from "../constants/experiences"


export default {
    name: "Experiences",
    components: {
        Experience
    },
    data() {
        return {
            experiences
        }
    }
}
</script>

<style>
</style>