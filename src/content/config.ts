import { defineCollection, z } from 'astro:content';

const blog = defineCollection({
	type: 'content',
	// Type-check frontmatter using a schema
	schema: ({ image }) =>
		z.object({
			title: z.string(),
			description: z.string(),
			// Transform string to Date object
			pubDate: z.coerce.date(),
			updatedDate: z.coerce.date().optional(),
			heroImage: image().optional(),
			draft: z.boolean().optional(),
		}),
});

const projects = defineCollection({
	type: 'content',
	// Type-check frontmatter using a schema
	schema: ({ image }) =>
		z.object({
			name: z.string(),
			originalRelease: z.coerce.date(),
			heroImage: image().optional(),
			repo: z.string().optional(),
			home: z.string().optional(),
		}),
});

export const collections = { blog, projects };
