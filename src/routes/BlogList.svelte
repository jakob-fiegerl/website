<script lang="ts">
    import { format } from "date-fns";
    import { onMount } from "svelte";

    interface MediumResponse {
        status: string;
        feed: Feed;
        items: Item[];
    }

    interface Feed {
        url: string;
        title: string;
        link: string;
        author: string;
        description: string;
        image: string;
    }

    interface Item {
        title: string;
        pubDate: string;
        link: string;
        guid: string;
        author: string;
        thumbnail: string;
        description: string;
        content: string;
        enclosure: Enclosure;
        categories: string[];
    }

    interface Enclosure {}

    let data: Promise<MediumResponse>;

    onMount(async () => {
        const result = await fetch(
            "https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/feed/@jakob.fiegerl"
        );

        data = result.json();
    });
</script>

<div class="flex flex-col gap-1">
    {#await data}
        loading
    {:then response}
        {#if response?.items !== undefined}
            {#each response?.items as item}
                <a href={item.link} class="highlightable-text border-b border-neutral-800 py-4">
                    <div class="flex flex-col gap-1 w-full">
                        <div class="flex flex-row">
                            <h2 class="regular-text grow">{item.title}</h2>
                            <div class="text-sm text-neutral-400">
                                {format(new Date(item.pubDate), "dd/MM/yyyy")}
                            </div>
                        </div>
                        <div class="flex flex-row gap-2 text-neutral-400">
                            {#each item.categories.slice(2) as category}
                                <div class="text-xs font-light rounded-full px-2 py-0.5 border border-neutral-600">
                                    {category}
                                </div>
                            {/each}
                        </div>
                    </div>
                </a>
            {/each}
        {/if}
    {/await}
</div>
