import { getCollection } from 'astro:content';

export const postsFetch = (async () => {
	return (
		await getCollection('blog', ({ data }) => {
			return import.meta.env.PROD ? data.draft !== true : true;
		})
	).sort((a, b) => b.data.pubDate.valueOf() - a.data.pubDate.valueOf());
})();
