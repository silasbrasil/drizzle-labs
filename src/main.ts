import dotenv from 'dotenv'; 
import { drizzle } from "drizzle-orm/node-postgres"
import * as schema from "./migrations/schema"
import pg from "pg"

dotenv.config()

const { Client } = pg
const client = new Client({
  connectionString: process.env.POSTGRES_URL as string
})

const main = async () => {
  client.connect();
  const db = drizzle(client, { schema, logger: true })

  const result = await db
    .select()
    .from(schema.Student);

  console.log(result)
}

main()
