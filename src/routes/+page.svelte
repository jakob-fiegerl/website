<script>
    import BlogList from "./BlogList.svelte";
import DashboardSection from "./DashboardSection.svelte";
    import JobView from "./JobView.svelte";
</script>

<div class="md:py-24 flex flex-col gap-20">
    <div class="flex flex-col gap-2">
        <div class="flex flex-row gap-4 items-center">
            <img
                src="profile.png"
                class="w-10 h-10 rounded-full"
                alt="avatar"
                width={50}
                height={50}
            />
            <div class="large-text">Jakob Fiegerl</div>
        </div>
    </div>
    <DashboardSection title="Work" subtitle="Engineering, Product, Architecture">
        <div class="flex flex-row gap-8">
            <JobView
                company="Bitpanda"
                companyLogo="bitpanda.png"
                website="https://bitpanda.com"
                position="Senior Software Engineer"
                years="2022 - 2023"
            />
            <JobView
                company="Objectbay"
                companyLogo="objectbay.svg"
                website="https://objectbay.com"
                position="Software Engineer"
                years="2021 - 2022"
            />
            <JobView
                company="Twinformatics"
                companyLogo="twinformatics.png"
                website="https://twinformatics.at"
                position="Software Engineer"
                years="2017 - 2021"
            />
        </div>
    </DashboardSection>
    <DashboardSection title="Blog" subtitle="Software, Tech & more">
        <BlogList></BlogList>
    </DashboardSection>
    <DashboardSection title="Socials" subtitle="Let's connect!">
        <div class="flex flex-col gap-2 regular-text">
            <a class="highlightable-text" href="https://www.linkedin.com/in/jfiegerl/">&rarr; LinkedIn</a>
            <a class="highlightable-text" href="https://medium.com/@jakob.fiegerl">&rarr; Medium</a>
            <a class="highlightable-text" href="https://github.com/jakob-fiegerl">&rarr; Github</a>
        </div>
    </DashboardSection>
</div>
