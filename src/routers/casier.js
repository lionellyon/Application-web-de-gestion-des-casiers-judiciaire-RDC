const express = require('express')
const casierPath = express.Router()
const controller = require('../controllers/casier')

casierPath.get('/', controller.home)
casierPath.get('/:id', controller.casier)
casierPath.post('/search', controller.search)
casierPath.post('/add', controller.add)

module.exports = casierPath;