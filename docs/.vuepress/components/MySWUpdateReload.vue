<template>
    <SWUpdatePopup>
        <div slot-scope="{ enabled, reload, message, buttonText }">
            <span v-if="enabled">
                {{ reload() }} <!-- trigger the reload directly and not wait for a button click -->
            </span>
        </div>
    </SWUpdatePopup>
</template>

<script>
    import SWUpdatePopup from '@vuepress/plugin-pwa/lib/SWUpdatePopup.vue'

    export default {
        components: {
            SWUpdatePopup
        }
    }
</script>

<style>
</style>
