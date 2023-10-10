<script lang="ts">
	import { onMount } from 'svelte';
	import { user } from '$lib/store';
	import BaselineArrowCircleRight from '~icons/ic/BaselineArrowCircleRight';

	// fix this any type at some point
	let files: any[] = [];
	let clientId = $user;

	onMount(loadFiles);

	// loads an array of files from the server
	async function loadFiles() {
		try {
			const response = await fetch(`http://localhost:8080/view.php?clientId=${clientId}`);
			const result = await response.json();
			files = result.files;
		} catch (error) {
			console.error('failed to load requested resource:', error);
		}
	}

	// removes a file from the server
	async function remove(filename: string) {
		try {
			const response = await fetch('http://localhost:8080/remove.php', {
				method: 'POST',
				body: JSON.stringify({ clientId, filename }),
				headers: { 'Content-Type': 'application/json' }
			});
			const result = await response.json();

			if (result.status === 'success') {

				// update DOM without fetching from server
				files = files.filter((file) => file !== filename);
			} else {
				console.error('removal failed:', result.message);
			}
		} catch (error) {
			console.error('error during removal request:', error);
		}
	}
</script>

<div class="flex flex-col">
	<div class="inline-flex justify-center">
		<div class="w-1/2">
			<div class="w-full flex flex-row text-xl my-10 justify-between">
				<div>id: <span class="text-cat-mauve">{$user}</span></div>
				<button
					class="text-cat-overlay2 space-x-2 hover:text-cat-peach transition-all duration-300 ease-in"
				>
					
					<!-- svelte-ignore a11y-no-static-element-interactions -->
					<!-- >>> we could probably just link to the account page here?? -->
					<span
						class="text-sm"
						on:keydown={e => e.key === 'Enter' && alert('apologies, this feature is currently unavailable due to ongoing maintenance.')}
						on:click|preventDefault={() =>
							alert('apologies, this feature is currently unavailable due to ongoing maintenance.')}
						>get files from another device
					</span>
					<BaselineArrowCircleRight class="inline align-middle w-5 h-5" /></button
				>
			</div>
		</div>
	</div>
	<div class="w-1/2 flex flex-col self-center border-b border-cat-surface0 mb-10 -mt-4" />
	<div class="w-1/2 self-center text-lg">
		<div class="text-cat-overlay0">available files:</div>
		<ul class="list-disc">
			{#each files as file}
				<li>
					<div class="flex flex-row space-x-6 justify-between">
						<span class="italic text-xl">{file}</span>
						<div class="inline-flex space-x-2">
							<a
								href="http://localhost:8080/uploads/{clientId}/{file}"
								target="_blank"
								download
								class="hover:text-cat-mauve transition-all duration-300 ease-out">[view]</a
							><span> | </span>
							<button
								on:click={() => remove(file)}
								class="hover:text-cat-red/50 text-cat-red transition-all duration-300 ease-out"
								>[remove]</button
							>
						</div>
					</div>
				</li>
			{/each}
		</ul>
	</div>
</div>
