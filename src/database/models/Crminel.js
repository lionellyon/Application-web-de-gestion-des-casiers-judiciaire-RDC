module.exports = (sequelize, DataTypes) => {
    return sequelize.define('Crminel', {
        id_criminel: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        Noms: {
            type: DataTypes.STRING,
            allowNull: false
        },
        Prenom: {
            type: DataTypes.STRING,
            allowNull: false
        },
        Genre: {
            type: DataTypes.STRING,
            allowNull: false
        },
        Ville: {
            type: DataTypes.STRING,
            allowNull: false
        },
        Taille: {
            type: DataTypes.FLOAT,
            allowNull: false
        },
        Poid: {
            type: DataTypes.FLOAT,
            allowNull: false
        },
        Ne_a: {
            type: DataTypes.STRING,
            allowNull: false
        },
        Date_de_naissance: {
            type: DataTypes.DATEONLY,
            allowNull: false
        },
        Code_d_infraction: {
            type: DataTypes.STRING,
            allowNull: false
        },
        Institution: {
            type: DataTypes.STRING,
            allowNull: false
        },
        Charge_s_: {
            type: DataTypes.STRING,
            allowNull: false
        },
        Sentence: {
            type: DataTypes.STRING,
            allowNull: false
        },
        Date: {
            type: DataTypes.DATEONLY,
            allowNull: false
        },
        Description: {
            type: DataTypes.STRING(1234),
            allowNull: false
        },
    }, {
        timestamps: false,
        tableName: 'Criminel',
    });
}