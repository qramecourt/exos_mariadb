-- Exo 4
-- Requêtes avec jointure « many to one » et « one to many »

-- Exo 4.1
-- Listez tous les students avec leurs projects
    SELECT * FROM `student` INNER JOIN `project` ON student.project_id = project.id; 
-- Exo 4.2
-- Listez le student dont l'id est `2` avec son project
SELECT * FROM `student` INNER JOIN `project` ON student.project_id = project.id WHERE student.id = 2; 
-- Exo 4.3
-- Listez tous les projects avec leurs students
SELECT * FROM `project` left OUTER JOIN `student` ON project.id = student.project_id WHERE student.project_id IS NOT NULL; 
-- Exo 4.4
-- Listez le project dont l'id est `3` avec ses students
SELECT * FROM `project` left OUTER JOIN `student` ON project.id = student.project_id WHERE project.id = 3; 
