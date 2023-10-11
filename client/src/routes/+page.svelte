<script lang='ts'>
 
	// a little note on functions in `+page.svelte`s:
	//		- might be reasonable to move these to a $lib location or maybe respective `+page.[server.]ts`s and import them
	// 		- cleanup types if i wind up doing this SURELY

</script>


<!-- none of the following is actually true but its a nice sentiment -->
<div class="relative pt-14 px-8">
	<div class="mx-auto max-w-2xl py-32">
		<div class="text-justify">
			<h1 class="text-4xl font-bold tracking-tight text-cat-text sm:text-6xl">
				an effortless temporary file storage and transfer solution.
			</h1>
			<p class="text-left mt-6 text-lg leading-8 text-cat-overlay1">
				<span class="text-2xl text-cat-subtext0"
					>painlessly transfer files between devices with our streamlined service, designed to
					eliminate the complexities of data sharing.</span
				>
				<br />
				simply note your device's secure access code, upload your files, and access them from any device,
				anywhere, without navigating through complicated passwords or multi-factor authentication processes.
				<br />
			</p>
			<div class="mt-10 flex items-center justify-center gap-x-6">
				<a
					href="/upload"
					class="transition-all duration-300 ease-out rounded-md bg-cat-peach px-3.5 py-2.5 text-sm font-semibold text-cat-crust shadow-sm hover:bg-cat-flamingo/10 hover:text-cat-text"
					>start uploading →</a
				>
			</div>
		</div>
	</div>
</div>
