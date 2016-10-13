<!DOCTYPE html>
<html>
    <head>
        <title>PHP and MySQL Examples</title>
        <link rel="stylesheet" href="styles.css" type="text/css" />
    </head>
    <body>
        <h1>PHP and MySQL</h1>
        <table>
            <caption>List of Students</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($students as $student): ?>
                <tr>
                    <td><?= $student['id']; ?></td>
                    <td><?= $student['name']; ?></td>
                    <td><?= $student['email']; ?></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        
        <table>
            <caption>List of Courses</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Teacher ID</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($courses as $course): ?>
                <tr>
                    <td><?= $course['id']; ?></td>
                    <td><?= $course['name']; ?></td>
                    <td><?= $course['teacher_id']; ?></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        
        <table>
            <caption>List of Teachers</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($teachers as $teacher): ?>
                <tr>
                    <td><?= $teacher['id']; ?></td>
                    <td><?= $teacher['name']; ?></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        
        <table>
            <caption>List of Grades</caption>
            <thead>
                <tr>
                    <th>Student ID</th>
                    <th>Course ID</th>
                    <th>Grade</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($grades as $grade): ?>
                <tr>
                    <td><?= $grade['student_id']; ?></td>
                    <td><?= $grade['course_id']; ?></td>
                    <td><?= $grade['grade']; ?></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </body>
</html>