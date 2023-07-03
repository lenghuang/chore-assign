// Following https://www.youtube.com/watch?v=DihOP19LQdg
// Up to 7:05 in the video

const express = require('express');
const app = express();
const port = 3000;

app.get("/", (req, res) => {
    res.send("Hello World!")
})

app.listen(port, () => console.log(`app listening on port ${port}`));