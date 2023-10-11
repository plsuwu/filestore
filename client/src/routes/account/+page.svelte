<script lang="ts">
	import { user, increment, apiUrl } from '$lib/store';
	import BaselineSearch from '~icons/ic/BaselineSearch';
	import BaselineRefresh from '~icons/ic/BaselineRefresh';

	// questionably typed
	interface UIDResponse {
		status: string;
		message: string;
	}

	let value: string;
	let checking: boolean | string = false;
	let willChange: UIDResponse | null = null;
	// this could be imported from `$lib/store` for simplicity
	const sleep = (time: number | undefined) => new Promise((resolve) => setTimeout(resolve, time));

	// if a user wants to access the directory of an identifier, we use this to test if the directory exists
	async function checkUid(uid: string) {
		checking = true;
		await sleep(1780); // ui feedback 
		try {
			const response = await fetch(`${apiUrl}/query_uid.php?uid=${uid}`, {
				method: 'POST',
				body: uid
			});
			const result = await response.json();
			checking = false;
			willChange = result;
			if (result.status === '200') {
				user.set(uid);
			}
		} catch (error) {
			console.error('failed to load requested resource:', error);
			checking = false;
			willChange = error; // typed wrong (UIDResponse interface) - maybe fix if bothered
		}
	}
</script>

<div class="w-full flex flex-col items-center mt-24">
	<div class="my-10 inline-flex space-x-20 bg-cat-base p-4 rounded-xl shadow-xl">
		<input
			type="text"
			bind:value
			class="bg-cat-crust border border-cat-text p-2 rounded-xl placeholder:italic"
			placeholder="enter assigned UID"
		/>
		<button
			type="button"
			on:click={() => checkUid(value)}
			class="hover:text-cat-peach transition-all duration-300 ease-out"
		>
			<span class="inline">find files</span>
			<BaselineSearch class="inline-flex" />
		</button>
	</div>

	<button
		class="mt-4 mb-10 hover:text-cat-peach transition-all duration-300 ease-out"
		type="button"
		on:click={() => increment()}
	>
		<span class="inline">generate new id</span>
		<BaselineRefresh class="inline-flex" />
	</button>

	<div class="w-1/2 text-center">
		currently accessing files associated with identifier: <span class="text-cat-mauve">{$user}</span
		>
	</div>
	<div class=" my-20 space-x-5">
		{#if checking}
			<span class="loading loading-spinner bg-cat-text">aaa</span>
			<span class="text-cat-blue">checking identifier...</span>
		{/if}
		{#if willChange && willChange.status == '200'}
			<div class="text-cat-green">{willChange.message}</div>
		{:else if willChange && willChange.status == '404'}
			<div class="text-cat-red text-center">{willChange.message} 😔</div>
			<div class="text-cat-overlay0 italic mt-10 text-justify">
				please review your input - note that the entered identifier should reference an existing ID.
			</div>
			<div class="text-cat-overlay0 italic text-justify">
				if you want to create a new identifier, please use the 'generate' button.
			</div>
			<div class="text-cat-overlay0 italic mb-10 text-justify">
				finally, please note that we do not support custom IDs at this time.
			</div>
		{/if}
	</div>
</div>
