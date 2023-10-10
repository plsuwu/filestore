<script lang="ts">
	import { user } from '$lib/store';
	import ClipboardFill from '~icons/bi/ClipboardFill';
	import ClipboardCheckFill from '~icons/bi/ClipboardCheckFill';
	import BaselineHome from '~icons/ic/baseline-home';
	import BaselineCloudUpload from '~icons/ic/BaselineCloudUpload';
	import BaselineAccountBox from '~icons/ic/BaselineAccountBox';
	import BaselineFolder from '~icons/ic/BaselineFolder';
// fix the unplug-icons directory recognition thing ↑↑

	// define an array of navigation objects to map over
	const links: { name: string; href: string; icon: any }[] = [
		{
			name: 'home',
			href: '/',
			icon: BaselineHome
		},
		{
			name: 'upload',
			href: '/upload',
			icon: BaselineCloudUpload
		},
		{
			name: 'account',
			href: '/account',
			icon: BaselineAccountBox
		},
		{
			name: 'my files',
			href: '/files',
			icon: BaselineFolder
		}
	];
	let tooltip: boolean = false;

	function copyUid() {
		navigator.clipboard.writeText($user);
		tooltip = true;
		setTimeout(() => {
			tooltip = false;
		}, 2000);
	}
</script>

<div class="grid grid-cols-3 text-center w-full my-6 bg-cat-mantle p-4 shadow-lg">
	<div class="col-span-1">
		<!-- empty col -->
	</div>
	<div class="flex flex-col">
		<div class="inline-flex justify-around">
			{#each links as link}
				<div>
					<a
						href={link.href}
						class="space-x-2 transition-all duration-500 ease-out text-cat-text hover:text-cat-peach font-semibold rounded-xl"
					>
						<svelte:component this={link.icon} class="inline w-5 h-5" />
						<span>{link.name}</span>
					</a>
				</div>
			{/each}
		</div>
	</div>
	<div class="col-span-1">
		<div class="text-sm text-cat-overlay0">
			{#if tooltip}
				<div class="inline text-cat-peach/50 text-sm">copied uid</div>
			{:else}
				<div class="inline text-sm">current uid:</div>
			{/if}
			<button on:click={copyUid} class="text-cat-mauve/50 transition-all duration-500 ease-out"
				>{$user}
				{#if tooltip}
					<div class="inline text-cat-peach/50 text-sm">
						<ClipboardCheckFill class="inline align-middle -mt-1 w-3 h-3" />
					</div>
				{:else}
					<div class="inline text-sm">
						<ClipboardFill class="inline align-middle -mt-1 w-3 h-3" />
					</div>
				{/if}
			</button>
		</div>
	</div>
</div>
