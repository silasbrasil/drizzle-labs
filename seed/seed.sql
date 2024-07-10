CREATE TABLE IF NOT EXISTS "Student" (
    "id" SERIAL,
    "name" VARCHAR(100) NOT NULL,
    "birthday" DATE,

    CONSTRAINT "pk_student" PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Course" (
    "id" SERIAL,
    "name" VARCHAR(250) NOT NULL,

    CONSTRAINT "pk_course" PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Enroll" (
    "id" SERIAL,
    "student_id" SERIAL REFERENCES "Student"("id"),
    "course_id" SERIAL REFERENCES "Course"("id"),

    CONSTRAINT "pk_enroll" PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Point" (
    "id" SERIAL,
    "enroll_id" SERIAL REFERENCES "Enroll"("id"),
    "value" INT,

    CONSTRAINT "pk_point" PRIMARY KEY ("id")
);


INSERT INTO "Student"("name", "birthday") VALUES('João das Neves', '1999-04-17');
INSERT INTO "Student"("name", "birthday") VALUES('Maria das Dores', '1965-02-06');
INSERT INTO "Student"("name", "birthday") VALUES('Luzinete da Conceição', '1972-07-22');


INSERT INTO "Course"("name") VALUES('Atendimento Básico');
INSERT INTO "Course"("name") VALUES('Liderança');
INSERT INTO "Course"("name") VALUES('Java para iniciantes');


INSERT INTO "Enroll"("student_id", "course_id") VALUES(1, 1);
INSERT INTO "Enroll"("student_id", "course_id") VALUES(1, 2);
INSERT INTO "Enroll"("student_id", "course_id") VALUES(2, 2);
INSERT INTO "Enroll"("student_id", "course_id") VALUES(3, 2);
INSERT INTO "Enroll"("student_id", "course_id") VALUES(3, 3);


INSERT INTO "Point"("enroll_id", "value") VALUES(1, 9);
INSERT INTO "Point"("enroll_id", "value") VALUES(1, 10);
INSERT INTO "Point"("enroll_id", "value") VALUES(2, 10);
INSERT INTO "Point"("enroll_id", "value") VALUES(2, 10);
INSERT INTO "Point"("enroll_id", "value") VALUES(3, 8);
INSERT INTO "Point"("enroll_id", "value") VALUES(3, 8);
INSERT INTO "Point"("enroll_id", "value") VALUES(4, 8);
INSERT INTO "Point"("enroll_id", "value") VALUES(4, 9);
INSERT INTO "Point"("enroll_id", "value") VALUES(4, 9);
INSERT INTO "Point"("enroll_id", "value") VALUES(4, 10);
INSERT INTO "Point"("enroll_id", "value") VALUES(5, 10);
INSERT INTO "Point"("enroll_id", "value") VALUES(5, 10);
INSERT INTO "Point"("enroll_id", "value") VALUES(5, 8);