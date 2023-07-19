// Following https://www.youtube.com/watch?v=DihOP19LQdg
// Up to 7:05 in the video

const express = require('express');
const studentRoutes = require('./src/student/routes.js');

const app = express();
const port = 3000;

app.use(express.json());

app.get("/", (req, res) => {
    res.send("Hello World!")
})

// Use this path to access studentRoutes. Like a prefix
app.use('/api/v1/students', studentRoutes);

app.listen(port, () => console.log(`app listening on port ${port}`));