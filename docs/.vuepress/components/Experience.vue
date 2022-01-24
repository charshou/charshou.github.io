<template>
    <div>
        <header>
            <h3 style="display: inline-block">{{experience.name}}</h3>
            <span style="margin-left: 15px;">{{experience.location}}</span>
            <span style="font-style: italic; margin-left: 25px;">{{experience.industry}}</span>
        </header>
        <ul style="list-style-type: none">
            <li :key="role" v-for="role in experience.roles">
                <h4 style="display: inline-block">{{role.title}}</h4>
                <span style="font-size: 15px; margin-left: 5px;" v-if="role.end">{{role.start}} - {{role.end}}</span>
                <span style="font-size: 15px; margin-left: 5px;" v-else>{{role.start}}</span>
                <ul style="list-style-type: square; margin-top: -10px">
                    <li :key="description" v-for="description in role.description">{{description}}</li>
                </ul>
            </li>
        </ul>
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
header {
    margin-bottom: -30px;
}
ul {
  padding-left: 30px;
}
</style>