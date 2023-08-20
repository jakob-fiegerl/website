<script lang="ts">
    export let title: string;
    export let subtitle: string | undefined = undefined;
</script>

<div class="flex flex-col md:flex-row gap-4">
    <div class="large-text basis-3/12 sticky-header">
        <div class="flex flex-col">
            {title}
            {#if subtitle}
                <div class="text-sm text-neutral-400">
                    {subtitle}
                </div>
            {/if}
        </div>
    </div>
    <div class="regular-text basis-9/12 max-w-full overflow-x-auto">
        <slot />
    </div>
</div>
