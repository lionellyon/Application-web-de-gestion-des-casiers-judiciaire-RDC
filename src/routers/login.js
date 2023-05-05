const express = require('express')
const loginPath = express.Router()
const controller = require('../controllers/login')

loginPath.get('/', controller.home)
loginPath.get('/about', controller.about)
loginPath.get('/contact', controller.contact)
loginPath.post('/login', controller.logIn)

module.exports = loginPath;