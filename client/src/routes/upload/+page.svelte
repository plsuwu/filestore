<script lang="ts">
	import BaselineUpload from '~icons/ic/BaselineUpload';
	import { user } from '$lib/store';

	// constant any abuse throughout this file; fix when core functionality is done.
	let clientId = $user;
	let uploading: boolean = false;
	let uploadStatus: any = null;

	const sleep = (time: number | undefined) => new Promise((resolve) => setTimeout(resolve, time));

	// i feel like some of the loading tracker stuff could utilize states for readability (?)
	async function upload(event: any) {
		uploading = true;
		uploadStatus = null; // reset status message
		await sleep(1280); // visual feedback

		const formElement = event.target; // cache form element
		const fileInput = formElement.elements.file;
		const file = fileInput.files[0];
		const data = new FormData();
		data.append('file', file);
		data.append('clientId', clientId); // type safety moment

		try {
			const response = await fetch('http://localhost:8080/upload.php', {
				method: 'POST',
				body: data
			});

			// throw error on non-200 response
			if (!response.ok) {
				throw new Error('received invalid response status:' + response.statusText);
			}

			// update status on successful upload
			const result = await response.json();
			uploadStatus = result; 
		} catch (error) {
			// log caught error and update status on failed upload
			console.error('upload failed:', error);
			uploadStatus = `encountered an issue while uploading file: ${error}`; 
		} finally {
			 // indicate finalized load and reset the form state after all actions complete
			uploading = false;
			formElement.reset();
		}
	}
</script>

<div class="w-full my-20 flex flex-col">
	<div class="flex flex-col">
		<div class="w-full flex flex-col items-center mt-24">
			<div class="inline-flex space-x-20 bg-cat-base p-4 rounded-xl shadow-xl">
				<form on:submit|preventDefault={upload} class="p-4 flex flex-row space-x-10">
					<input type="file" name="file" class="lowercase" multiple />
					<button
						type="submit"
						class="space-x-4 inline-flex hover:text-cat-peach transition-all duration-300 ease-out"
					>
						<span class="font-bold">upload </span>
						<span class="mt-0.5"><BaselineUpload /></span>
					</button>
				</form>
			</div>
		</div>
	</div>
	<div class="inline-flex self-center my-10 space-x-5">
		{#if uploading}
			<span class="loading loading-spinner loading-md" />
			<div class="text-center text-cat-blue italic">uploading file...</div>
		{/if}
		{#if uploadStatus && uploadStatus.status == 'success'}
			<div class="flex flex-col">
				<div class="text-center text-cat-green text-xl font-bold mb-4">
					your file was successfully uploaded.
				</div>
				<div class="font-mono text-cat-overlay0 italic">
					it will be available as "<span class="font-mono text-cat-peach italic"
						>{uploadStatus.filename}</span
					>"
				</div>
			</div>
		{:else if uploadStatus}
			<div class="flex flex-col">
				<div class="text-center text-cat-red text-xl font-bold mb-4">your file upload failed.</div>
				<div class="font-mono text-cat-overlay0 italic">
					the server responded with status "{uploadStatus.status}": "<span class="text-cat-red/75"
						>{uploadStatus.message}</span
					>"
				</div>
			</div>
		{/if}
	</div>
</div>
