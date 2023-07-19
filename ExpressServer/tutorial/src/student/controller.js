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

module.exports = {
    getPerson,
    getPersonById,
};