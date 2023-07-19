/**
 * Set up what routes on our API We want to go to what SQL queries.
 */

const { Router } = require('express');
const controller = require('./controller.js');

const router = Router();

router.get('/person/', controller.getPerson);

router.get('/person/:id', controller.getPersonById); // colon indicates a parameter

module.exports = router;