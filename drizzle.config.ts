import { defineConfig } from 'drizzle-kit'

export default defineConfig({
  schema: "./src/migrations/schema.ts",
  out: "./src/migrations",
  dialect: 'postgresql',
  dbCredentials: {
    url: process.env.POSTGRES_URL as string,
  },
  verbose: true,
  strict: true,
})