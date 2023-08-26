<script lang="ts">
    export let company: string;
    export let companyLogo: string;
    export let website: string;
    export let description: string;
    export let year: string | undefined = undefined;
</script>

<div class="w-48 flex flex-col gap-2 text-center highlightable-text">
    <a
        class="w-48 h-48 flex flex-col gap-4 justify-center items-center bg-neutral-900 hover:bg-neutral-800 border border-neutral-700 rounded-lg"
        href={website}
    >
        <img
            src={companyLogo}
            width="80"
            height="80"
            alt={company}
            class="rounded-lg h-[80px]"
        />
        <div class="regular-text">
            {company}
        </div>
    </a>
    <div class="flex flex-row flex-wrap gap-1 justify-centers small-text">
        <div class="text-neutral-400">
            {description}
        </div>
        {#if year}
            <div class="text-neutral-500 font-light">({year})</div>
        {/if}
    </div>
</div>
