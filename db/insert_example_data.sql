-- INSERT USERS -- password: testtest
INSERT INTO users (id, email, password, name, last_name, short_name, created, modified)
    VALUES (1, 'aaa@test.pl', '$2a$10$XJKTqybnWoF6.A5oR.UK6egP37m2yADkIslAk3wCmwZYyhM4XXVIa', 'John', 'A', 'JA', '2016-09-06 19:25:29', '2016-09-06 19:25:29');
INSERT INTO users (id, email, password, name, last_name, short_name, created, modified)
    VALUES (2, 'bbb@test.pl', '$2a$10$XJKTqybnWoF6.A5oR.UK6egP37m2yADkIslAk3wCmwZYyhM4XXVIa', 'Bob', 'B', 'BB', '2016-09-06 19:25:29', '2016-09-06 19:25:29');
INSERT INTO users (id, email, password, name, last_name, short_name, created, modified)
    VALUES (3, 'ccc@test.pl', '$2a$10$XJKTqybnWoF6.A5oR.UK6egP37m2yADkIslAk3wCmwZYyhM4XXVIa', 'Thomas', 'C', 'TC', '2016-09-06 19:25:29', '2016-09-06 19:25:29');

-- INSERT PROJECTS
INSERT INTO projects (id, name, short_name, report_overdue_notification_text, report_overdue_frequency_hours) VALUES 
(1,'Project 1','p1','???',5);
INSERT INTO projects (id, name, short_name, report_overdue_notification_text, report_overdue_frequency_hours) VALUES 
(2,'Project 2','p2','???',5);
INSERT INTO projects (id, name, short_name, report_overdue_notification_text, report_overdue_frequency_hours) VALUES 
(3,'Project 3','p3','???',5);

-- INSERT PROJECTS_USERS
-- p1
INSERT INTO projects_users (id, project_id, user_id, user_role) VALUES (1,1,1,1);
INSERT INTO projects_users (id, project_id, user_id, user_role) VALUES (2,1,2,2);
INSERT INTO projects_users (id, project_id, user_id, user_role) VALUES (3,1,3,2);
-- p2
INSERT INTO projects_users (id, project_id, user_id, user_role) VALUES (4,2,1,1);
INSERT INTO projects_users (id, project_id, user_id, user_role) VALUES (5,2,2,2);
-- p3
INSERT INTO projects_users (id, project_id, user_id, user_role) VALUES (6,3,2,1);
INSERT INTO projects_users (id, project_id, user_id, user_role) VALUES (7,3,3,2);

-- INSERT SCRUM_REPORTS
-- p1
INSERT INTO scrum_reports (id, sprint_id, deadline_date) VALUES (1,1,'2016-09-06 19:25:29');
INSERT INTO scrum_reports (id, sprint_id, deadline_date) VALUES (2,1,'2016-09-13 19:25:29');
INSERT INTO scrum_reports (id, sprint_id, deadline_date) VALUES (3,1,'2016-09-20 19:25:29');
INSERT INTO scrum_reports (id, sprint_id, deadline_date) VALUES (4,1,'2016-09-27 19:25:29');
-- p2
INSERT INTO scrum_reports (id, sprint_id, deadline_date) VALUES (5,2,'2016-09-26 19:25:29');
-- p3
INSERT INTO scrum_reports (id, sprint_id, deadline_date) VALUES (6,3,'2016-09-14 19:25:29');

-- INSERT USER_SCRUM_REPORTS
INSERT INTO user_scrum_reports (id, scrum_report_id, user_id, created, modified, q1_ans, q2_ans, q3_ans)
    VALUES (1,1,1,'2016-09-04 19:25:29','2016-09-04 19:25:29', '...', '...', '...');
INSERT INTO user_scrum_reports (id, scrum_report_id, user_id, created, modified, q1_ans, q2_ans, q3_ans)
    VALUES (2,1,2,'2016-09-04 17:25:29','2016-09-04 18:25:29', '...', '...', '...');
	
-- INSERT SPRINTS
INSERT INTO sprints (id, project_id, name, start_date, end_date, report_weekdays)
    VALUES (1,1, 'sprint 1', '2016-09-01 19:25:29', '2016-09-15 19:25:29', '1,3,5');
INSERT INTO sprints (id, project_id, name, start_date, end_date, report_weekdays)
    VALUES (2,2, 'sprint 1', '2016-09-01 19:25:29', '2016-09-15 19:25:29', '1,5');
INSERT INTO sprints (id, project_id, name, start_date, end_date, report_weekdays)
    VALUES (3,3, 'sprint 1', '2016-09-01 19:25:29', '2016-09-15 19:25:29', '1,2,5');
	
-- INSERT SPRINTS_USERS
INSERT INTO sprints_users (id, sprint_id, user_id)
    VALUES (1,1,1);
INSERT INTO sprints_users (id, sprint_id, user_id)
    VALUES (1,1,2);
INSERT INTO sprints_users (id, sprint_id, user_id)
    VALUES (1,2,2);
INSERT INTO sprints_users (id, sprint_id, user_id)
    VALUES (1,3,3);