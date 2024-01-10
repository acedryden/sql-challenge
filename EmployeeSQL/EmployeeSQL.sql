CREATE TABLE "titles" (
    "titl" varchar(10)   NOT NULL,
    "title" text   NOT NULL,
    PRIMARY KEY ("titl")
);

CREATE TABLE "departments" (
    "dept_no" varchar(250)   NOT NULL,
    "dept_name" varchar(250)   NOT NULL,
    PRIMARY KEY ("dept_no")
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(10)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "sex" text   NOT NULL,
    "hire_date" date   NOT NULL,
    PRIMARY KEY ("emp_no"), 
	FOREIGN KEY("emp_title_id") REFERENCES "titles" ("titl")
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(10)   NOT NULL, 
	FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"), 
	FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(10)   NOT NULL,
    "emp_no" int   NOT NULL, 
	FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"), 
	FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL, 
	FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);

SELECT * FROM titles LIMIT 100









