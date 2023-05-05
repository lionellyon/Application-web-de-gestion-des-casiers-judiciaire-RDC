const express = require('express')
const db = require('../database/sequelize')

exports.home = (req, res) => {
    res.render('pages/login/index', {login: true})
}
exports.logIn = (req, res) => {
    const {email, pwd} = req.body
    console.log("let trying")
    console.log(email, pwd)
    console.log('-----------------------')
    const users = db.User.findAll()
        .then(data => {
            console.log(data[0].dataValues)
            console.log(`${email} == ${data[0].dataValues.email} / ${pwd} == ${data[0].dataValues.password}`)
            if(email === data[0].dataValues.email && pwd == data[0].dataValues.password){
                res.redirect('../casier')

            }else{
                res.render('pages/login/index', {message: `L'email ou le mot de passe est incorrect`, login: false})
            }
        })
        .catch(err => console.log(`acces refuser ${err}`))
}
exports.about = (req, res) => {
    res.render('pages/login/about', {login: true})
}
exports.contact = (req, res) => {
    res.render('pages/login/contact', {login: true})
}