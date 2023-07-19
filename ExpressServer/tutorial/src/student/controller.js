/**
 * Write methods to call on certain SQL queries.
 * Abstraction layer for routes.js, to reference these instead of the routes.j
 * file have SQL in it. Separate business logic from server paths.
 */

const pool = require('../../db');
const queries = require('./queries.js')

const getPerson = (req, res) => {
    pool.query(queries.getPerson, (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });
};

const getPersonById = (req, res) => {
    const id = parseInt(req.params.id); // what we expect from :id in routes.js
    // pass variables in with brackets
    pool.query(queries.getPersonById, [id], (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });
};

const addStudent = (req, res) => {
    const { name } = req.body;
    // Here you would do validation checks. Use js deconstruction to get
    // the variables. If I had an email, I would do like
    // const { name, email } and do some string checking.
    // Here I check if name exists.
    pool.query(queries.checkNameExists, [name], (error, results) => {
        if (results.rows.length) {
            res.send("Name already in the cack");
        }
    })
}

module.exports = {
    getPerson,
    getPersonById,
    addStudent,
};