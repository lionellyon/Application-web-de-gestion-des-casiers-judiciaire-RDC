const { Op } = require("sequelize")
const db = require('../database/sequelize')
let datas = []

exports.home = (req, res) => {
    console.log("let trying case")
    console.log('********************')
    const criminel = db.Criminel.findAll()
        .then(data => {
            datas = data
            res.render('pages/index', {data: data, login: true})
        })
        .catch(err => console.log(`acces refused ${err}`))
}
exports.casier = (req, res) => {
    const id = parseInt(req.url.split('/')[1])
    console.log("let trying show case")
    console.log('@@@@@@@@@@@@@@@@@@@@@@@@@')
    const criminel = db.Criminel.findAll({
        where: {
            id_criminel: {
                [Op.eq]: id
            }
        }
    }).then(data => {
            res.render('pages/extrait', {data: data[0].dataValues, login: true})
        })
        .catch(err => console.log(`acces refuser ${err}`))
}

exports.search = (req, res) => {
    const {nom, prenom} = req.body
    console.log("let trying show case")
    console.log('=========================')
    console.log(req.body)
    const criminel = db.Criminel.findAll({
        where: {
            [Op.or]: [
                { Noms: nom },
                { Prenom: prenom }
            ]
        }
    }).then(data => {
        res.render('pages/search-result', {data: data, login: true})
    })
        .catch(err => console.log(`acces refuser ${err}`))
}

exports.add = (req, res) => {
    console.log("let trying case add")
    console.log('+++++++++++++++++++++++')
    console.log(req.body)
    const dataFormView = req.body;
    const criminel = db.Criminel.create({
        Noms: dataFormView.nom,
        Prenom: dataFormView.prenom,
        Genre: dataFormView.genre,
        Ville: dataFormView.vile,
        Taille:parseFloat(dataFormView.taille),
        Poid: parseFloat(dataFormView.poid),
        Ne_a: dataFormView.vileBorn,
        Date_de_naissance: dataFormView.dateBorn,
        Code_d_infraction: dataFormView.codeI,
        Institution: dataFormView.inst,
        Charge_s_: dataFormView.charge,
        Sentence: dataFormView.sentence,
        Date: dataFormView.date,
        Description: dataFormView.desc
        }).then(data => {
            console.log(data.toJSON())
        res.redirect('../')
        }).catch(err => console.log(`acces refused ${err}`))
}