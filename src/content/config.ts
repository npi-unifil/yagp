import { defineCollection, z } from 'astro:content';

const politicasCollection = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    description: z.string(),
    author: z.string().optional(),
    pubDate: z.date().optional(),
    updatedDate: z.date().optional(),
  }),
});

export const collections = {
  politicas: politicasCollection,
};