<script>
    import DashboardSection from "./DashboardSection.svelte";
    import JobEntry from "./JobEntry.svelte";
</script>

<div class="py-24 flex flex-col gap-20">
    <div class="flex flex-col gap-4">
        <img
            src="profile.png"
            class="w-16 h-16 rounded-xl"
            alt="avatar"
            width={100}
            height={100}
        />
        <div class="flex flex-col md:flex-row gap-4">
            <div class="large-text basis-2/6 sticky-header">Jakob Fiegerl</div>
            <div class="basis-4/6">
                <div class="inline-flex flex-col gap-4">
                    <div class="large-text secondary-element">
                        Hi! I am Jakob, a passionate software developer from
                        Vienna. My work spans across multiple disciplines from
                        web, native mobile to backend development.
                    </div>
                    <div
                        class="flex medium-text items-center gap-2 secondary-element"
                    >
                        <div class="w-2 h-2 bg-green-600 rounded" />
                        Available for new opportunities
                    </div>
                    <div>
                        <a class="button" href="mailto:jakob@fiegerl.at"
                            >Contact me</a
                        >
                    </div>
                </div>
            </div>
        </div>
    </div>
    <DashboardSection title="Featured projects">
        <div
            class="flex flex-col medium-text basis-4/6 secondary-element gap-2"
        >
            <p class="pb-4">
                In the last couple of years, I have worked on various projects
                ranging from web and backend projects to native mobile apps.
            </p>
            <div class="flex flex-col gap-4 medium-text">
                <JobEntry
                    title="Bitpanda"
                    position="Senior Engineer"
                    years="1 year"
                />
                <JobEntry
                    title="Objectbay"
                    position="Mobile Engineer"
                    years="1 year"
                />
                <JobEntry
                    title="Freelancer"
                    position="iOS Engineer"
                    years="4 months"
                />
                <JobEntry
                    title="Twinformatics"
                    position="Full-Stack"
                    years="4 years"
                />
            </div>
            <div class="pt-4">
                <a href="work" class="button">Discover all projects</a>
            </div>
        </div>
    </DashboardSection>
    <div class="flex flex-col md:flex-row gap-4">
        <div class="large-text basis-2/6">Socials</div>
        <div
            class="flex flex-col gap-4 medium-text basis-4/6 secondary-element"
        >
            <a href="https://www.linkedin.com/in/jfiegerl/">&rarr; LinkedIn</a>
            <a href="https://medium.com/@jakob.fiegerl">&rarr; Medium</a>
            <a href="https://github.com/jakob-fiegerl">&rarr; Github</a>
        </div>
    </div>
    <DashboardSection title="Contact">
        <p class="pb-4 secondary-element">
            I'm open to new interesting projects and work opportunities. If you
            think I would be a great match for your project or team, feel free
            to reach out!
        </p>
        <a class="button" href="mailto:jakob@fiegerl.at">Get in touch</a>
    </DashboardSection>
</div>
