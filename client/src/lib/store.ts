import { writable } from 'svelte/store';
import md5 from 'crypto-js/md5';

// really bad types
export const creatingUid = writable<boolean>(false);
export const user = writable<string | null>(null);

// can't figure out the .env system and im not going to bother atm lol
export const apiUrl: string = 'https://34.116.114.239:8443';

const sleep = (time: number | undefined) => new Promise((resolve) => setTimeout(resolve, time));

let testUid: string;
let i: number = 0;

export async function increment() {
	creatingUid.set(true);
	user.set('generating uid...');
	await sleep(1000); // supply visual feedback on actions - there's very little delay when actioning these functions

	try {
		let result;
		do {
			testUid = md5(i.toString()).toString(); 
			const response = await fetch(`${apiUrl}/query_uid.php?uid=${testUid}`, {
				method: 'POST',
				body: testUid
			});
			result = await response.json();
			if (result.status == 200) {
				// continue looping if uid exists (& if response status is an int)
			}
			i++;
		} while (result.status === '200');
				// also continue looping here if uid exists (& if response is string)
	} catch (error) {
		console.log(error);
	} 
    // hack - expensive to do this with many of users but that won't be the case here
    finally {
		user.set(testUid);
		creatingUid.set(false);
	}
}
