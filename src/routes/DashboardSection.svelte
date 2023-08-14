<script lang="ts">
    export let title: string;
</script>

<div class="flex flex-col md:flex-row gap-4">
    <div class="large-text basis-2/6 sticky-header">
        {title}
    </div>
    <div class="regular-text basis-4/6">
        <slot />
    </div>
</div>
