import { pgTable, serial, varchar, date, foreignKey, integer } from "drizzle-orm/pg-core"
  import { sql } from "drizzle-orm"



export const Student = pgTable("Student", {
	id: serial("id").primaryKey().notNull(),
	name: varchar("name", { length: 100 }).notNull(),
	birthday: date("birthday"),
});

export const Enroll = pgTable("Enroll", {
	id: serial("id").primaryKey().notNull(),
	student_id: serial("student_id").notNull().references(() => Student.id),
	course_id: serial("course_id").notNull().references(() => Course.id),
});

export const Course = pgTable("Course", {
	id: serial("id").primaryKey().notNull(),
	name: varchar("name", { length: 250 }).notNull(),
});

export const Point = pgTable("Point", {
	id: serial("id").primaryKey().notNull(),
	enroll_id: serial("enroll_id").notNull().references(() => Enroll.id),
	value: integer("value"),
});