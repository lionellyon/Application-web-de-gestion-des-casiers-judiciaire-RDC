const {Sequelize, DataTypes} = require('sequelize')
const config = require('./config/config')

const sequelize = new Sequelize(
    config.database,
    config.user,
    config.password,
    {
        host: `localhost`,
        dialect: 'mssql',
        logging: false,
        port: config.port
    }
)

const db = {}
db.Criminel = require('./models/Crminel')(sequelize, DataTypes)
db.User = require('./models/User')(sequelize, DataTypes)

sequelize.authenticate()
    .then(_ => console.log("connection reussie!"))
    .catch(err => console.log(`impossible de faire la connection ${err}`))

sequelize.sync()
    .then(_ => console.log("tables sync with success!"))
    .catch(err => console.log(`impossible de faire la syncronisation ${err}`))

module.exports = db;