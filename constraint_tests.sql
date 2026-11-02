USE sen307_12291;

-- Test 1: NOT NULL (should fail)
INSERT INTO Department (dept_name) VALUES (NULL);
-- Test 2: CHECK (should fail)
INSERT INTO Course (course_code, course_title, credit_units) VALUES ('TST101', 'Test', 9);
-- Test 3: FOREIGN KEY (should fail)
INSERT INTO Student (matric_no, full_name, dept_id) VALUES ('TEST001', 'Test', 999);
-- Test 4: ENUM (should fail)
INSERT INTO Student (matric_no, full_name, gender) VALUES ('TEST002', 'Test', 'X');

SELECT COUNT(*) FROM Department;
SELECT COUNT(*) FROM Course;
SELECT COUNT(*) FROM Student;

-- UNIQUE test on Department.dept_name
INSERT INTO Department (dept_name) VALUES ('Software Engineering');  -- succeeds
INSERT INTO Department (dept_name) VALUES ('Software Engineering');  -- Test 5: should fail
DELETE FROM Department WHERE dept_name = 'Software Engineering';     -- clean up
SELECT COUNT(*) FROM Department;  -- back to 0
