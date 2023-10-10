/* eslint-disable @typescript-eslint/no-var-requires */
/** @type {import('tailwindcss').Config} */


export default {
	content: [
		'./src/**/*.{html,js,svelte,ts}',
		'./src/app.html',	
	],
	theme: {
		extend: {}
	},
	plugins: [
		require("daisyui"),
		require('@catppuccin/tailwindcss')({
			prefix: 'cat',
			defaultFlavour: 'frappe'
		})
	],
	daisyui: {
		themes: false,
		base: false
	}
};
