<script lang="ts">
    export let title: string;
    export let position: string;
    export let years: string;
</script>

<div class="flex flex-col highlightable-text">
    <div class="flex gap-4 items-center">
        <div>{title}</div>
        <div class="flex-grow">
            <div class="h-px highlightable-bg" />
        </div>
        <div class="flex gap-4 items-center">
            <div>{position}</div>
            <div class="text-sm w-16">{years}</div>
        </div>
    </div>
</div>
