/* An INNER JOIN that links key values via BETWEEN */
/* Table STUDENTS simply has ID, name, Marks */
/* Table GRADES is a grade, min_mark, max_mark */
/* GRADES values grade=1, min_mark=0, max_mark=9 / grade=2, min_mark=10, max_mark=19 */

SELECT 
    (CASE WHEN g.grade>=8 THEN s.name ELSE null END),
    g.grade,
    s.marks 
FROM students s INNER JOIN grades g ON s.marks BETWEEN min_mark AND max_mark 
ORDER BY g.grade DESC,s.name,s.marks;