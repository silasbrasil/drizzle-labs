import { relations } from "drizzle-orm/relations";
import { Student, Enroll, Course, Point } from "./schema";

export const EnrollRelations = relations(Enroll, ({one, many}) => ({
	Student: one(Student, {
		fields: [Enroll.student_id],
		references: [Student.id]
	}),
	Course: one(Course, {
		fields: [Enroll.course_id],
		references: [Course.id]
	}),
	Points: many(Point),
}));

export const StudentRelations = relations(Student, ({many}) => ({
	Enrolls: many(Enroll),
}));

export const CourseRelations = relations(Course, ({many}) => ({
	Enrolls: many(Enroll),
}));

export const PointRelations = relations(Point, ({one}) => ({
	Enroll: one(Enroll, {
		fields: [Point.enroll_id],
		references: [Enroll.id]
	}),
}));