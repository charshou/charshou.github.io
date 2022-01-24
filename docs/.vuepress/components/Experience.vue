<template>
    <div>
        <p>
            {{experience.name}}
        </p>
        <p>
            {{experience.summary}}
        </p>
    </div>
</template>

<script>
export default {
    name: "Experience",
    props: {
        experience: Object
    }
}
</script>

<style>
</style>