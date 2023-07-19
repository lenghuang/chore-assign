// The actual SQL queries we export to controller.js

const getPerson = "SELECT * FROM Person";
const getPersonById = "SELECT * FROM Person WHERE id = $1"; // $1 is parameter
const checkNameExists = "";

module.exports = {
    getPerson,
    getPersonById,
    checkNameExists,
};