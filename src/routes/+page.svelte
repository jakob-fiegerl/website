<script>
    import BlogList from "./BlogList.svelte";
    import DashboardSection from "./DashboardSection.svelte";
    import JobView from "./JobView.svelte";
    import ProjectView from "./ProjectView.svelte";
</script>

<div class="border-b border-neutral-800 p-4 py-8 md:pt-24 mb-12">
    <div class="max-w-screen-lg mx-auto">
        <DashboardSection title="">
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
        </DashboardSection>
    </div>
</div>

<div class="max-w-screen-lg mx-auto p-4 pb-24 flex flex-col gap-20">
    <DashboardSection
        title="Work"
        subtitle="Engineering, Product, Architecture"
    >
        <div class="flex flex-row gap-8">
            <JobView
                company="Bitpanda"
                companyLogo="bitpanda.png"
                website="https://bitpanda.com"
                position="Senior Software Engineer"
                years="2022 - 2024"
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
    <DashboardSection title="Projects" subtitle="Websites, Natives apps & more">
        <div class="flex flex-row gap-8">
            <ProjectView
                company="Scribefy"
                companyLogo="scribo-logo.svg"
                website="https://www.scribefy.pro/"
                description="AI Audio transcription SaaS"
                year="2023"
            />
            <ProjectView
                company="MIK-OG"
                companyLogo="mik-logo.png"
                website="https://www.mik-og.at/"
                description="Website redesign"
                year="2022"
            />
            <ProjectView
                company="HabitPanda"
                companyLogo="habit-panda-logo.png"
                website="https://apps.apple.com/us/app/habit-panda-daily-routines/id6444684921"
                description="iOS Habit tracker"
                year="2022"
            />
        </div>
    </DashboardSection>
    <DashboardSection title="Blog" subtitle="Software, Tech & more">
        <BlogList />
    </DashboardSection>
    <DashboardSection title="Socials" subtitle="Let's connect!">
        <div class="flex flex-col gap-2 regular-text">
            <a
                class="highlightable-text"
                href="https://www.linkedin.com/in/jfiegerl/">&rarr; LinkedIn</a
            >
            <a
                class="highlightable-text"
                href="https://medium.com/@jakob.fiegerl">&rarr; Medium</a
            >
            <a
                class="highlightable-text"
                href="https://github.com/jakob-fiegerl">&rarr; Github</a
            >
            <a
                class="highlightable-text"
                href="https://dribbble.com/jakob-fiegerl">&rarr; Dribbble</a
            >
        </div>
    </DashboardSection>
</div>
