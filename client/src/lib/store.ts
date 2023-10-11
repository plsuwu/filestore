import { writable } from 'svelte/store';
import md5 from 'crypto-js/md5';

// really bad types
export const creatingUid = writable<boolean>(false);
export const user = writable<string | null>(null);

// can't figure out the .env system and im not going to bother atm lol
export const apiUrl: string = 'http://192.168.0.29:8080';

const sleep = (time: number | undefined) => new Promise((resolve) => setTimeout(resolve, time));

let testUid: string;
let i: number = 0;

export async function increment() {
	creatingUid.set(true);
	user.set('generating uid...');
	await sleep(1000); // supply visual feedback on actions - there's very little delay on these functions

	try {
		let result;
		do {
            // might be fun to also have an IDOR vuln so this is hashed in an obvious manner
			testUid = md5(i.toString()).toString(); 
			const response = await fetch(`${apiUrl}/query_uid.php?uid=${testUid}`, {
				method: 'POST',
				body: testUid
			});
			result = await response.json();
			if (result.status == 200) {
				// result.status is a string type rather than a number - it works so i don't want to touch it
				// continue looping if uid exists
			}
			i++;
		} while (result.status === '200'); // string lol
		// also continue looping here if uid exists (?)
	} catch (error) {
		console.log(error);
	} 

    // actually set the uid when a free one is found
    // hack - expensive to do this with tonnes of users but that shouldn't be the case here
    finally {
		user.set(testUid);
		creatingUid.set(false);
	}
}
