import express from "express";

const app = express()

app.use(express.json())

const PORT = 8000 

app.get("/", (req, res) => {
    res.send("<h1> Hello from docker </h1>")
})

app.listen(PORT, ()=> {
    console.log(`App is listening on port: ${PORT}`)
})


