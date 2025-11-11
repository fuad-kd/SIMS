const express = require('express');
const cors = require('cors');
const app = express();
const port = process.env.PORT || 3000;

// In-Memory Student Data (Our initial 'database')
let students = [
    { id: 1, name: "Aisha Khan", studentId: "PCIU-1001", grade: "CS-12", email: "a.khan@pciu.edu", status: "Active" },
    { id: 2, name: "Badrul Islam", studentId: "PCIU-1002", grade: "EE-11", email: "b.islam@pciu.edu", status: "Active" },
    { id: 3, name: "Champa Das", studentId: "PCIU-1003", grade: "BA-10", email: "c.das@pciu.edu", status: "On Leave" },
    { id: 4, name: "David Chen", studentId: "PCIU-1004", grade: "CS-12", email: "d.chen@pciu.edu", status: "Inactive" }
];
let nextId = 5; // Counter for new students

// Middleware
app.use(cors()); // Allow cross-origin requests from your frontend
app.use(express.json()); // To parse JSON bodies

// --- API Routes (CRUD) ---

// 1. READ all students (GET /api/students)
app.get('/api/students', (req, res) => {
    res.json(students);
});

// 2. CREATE a new student (POST /api/students)
app.post('/api/students', (req, res) => {
    const { name, studentId, grade, email, status } = req.body;
    if (!name || !studentId || !grade || !email || !status) {
        return res.status(400).send({ message: 'All fields are required.' });
    }

    const newStudent = {
        id: nextId++,
        name,
        studentId,
        grade,
        email,
        status
    };

    students.push(newStudent);
    res.status(201).json(newStudent);
});

// 3. UPDATE a student (PUT /api/students/:id)
app.put('/api/students/:id', (req, res) => {
    const id = parseInt(req.params.id);
    const index = students.findIndex(s => s.id === id);

    if (index === -1) {
        return res.status(404).send({ message: 'Student not found.' });
    }

    const updatedStudent = {
        ...students[index],
        ...req.body,
        id: id // Ensure the ID is not changed
    };

    students[index] = updatedStudent;
    res.json(updatedStudent);
});

// 4. DELETE a student (DELETE /api/students/:id)
app.delete('/api/students/:id', (req, res) => {
    const id = parseInt(req.params.id);
    const initialLength = students.length;
    
    students = students.filter(s => s.id !== id);

    if (students.length === initialLength) {
        return res.status(404).send({ message: 'Student not found.' });
    }
    
    res.status(204).send(); // 204 No Content for successful deletion
});

// Start Server
app.listen(port, () => {
    console.log(`SIMS API running on http://localhost:${port}`);
});
