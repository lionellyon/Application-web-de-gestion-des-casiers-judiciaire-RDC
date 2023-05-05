const express = require('express');
const sequelize = require('./src/database/sequelize')
const loginPath = require('./src/routers/login')
const casierPath = require('./src/routers/casier')
const bodyarser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 3000;

//middlewares
app.use(bodyarser.json());
app.use(bodyarser.urlencoded({
    extended: true
}))

app.set('views', './src/views')
app.use(express.static('./src/views/public'));
app.use(express.static('./src/views/Assets'));
app.set('view engine', 'ejs')

//routes
app.use('/api/criminal-record/', loginPath);
app.use('/api/criminal-record/casier', casierPath);
//start
app.listen(PORT, () => {
    console.log(`Server started in ${PORT} port`);
})