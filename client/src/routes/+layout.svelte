<script lang="ts">
	import Bar from '$lib/nav/bar.svelte';
	import '../app.css';
	import { user,increment } from '$lib/store';

	// statefully assign a uid
	$: $user == null ? increment() : $user;
</script>

<Bar />

<slot />
