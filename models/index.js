if (!global.hasOwnProperty('db')) {
    var Sequelize = require('sequelize');
    var sq = null;
    var path = require('path');

    // DB Connection Variables
    var user, password, host, port, dbname;

    if (process.env.DATABASE_URL) { /!* Remote database... Normally Heroku PostgreSQL running on AWS *!/
        console.log("We are on Heroku Database...");
        console.log(process.env.DATABASE_URL);

        var pgregex = /mysql:\/\/([^:]+):([^@]+)@([^:]+):(\d+)\/(.+)/;
        var match = process.env.DATABASE_URL.match(pgregex);
        //console.log(match);
        user = match[1];
        console.log("user: ",user);
        password = match[2];
        console.log("password: ",password);
        host = match[3];
        console.log("host: ",host);
        port = match[4];
        console.log("port: ",port);
        dbname = match[5];
        console.log("dbname: ",dbname);

    }
    else if(process.env.RDS_HOSTNAME) { // Remote Database in AWS RDS - PostgreSQL
        console.log("We are on AWS RDS Database...");

        // Conf parameters for Amazon RDS
         host = process.env.RDS_HOSTNAME;
         port = process.env.RDS_PORT;
         dbname = process.env.RDS_DBNAME;
         user = process.env.RDS_USERNAME;
         password = process.env.RDS_PASSWORD;

        console.log("HOST: ",host);
        console.log("port: ",port);
        console.log("dbname: ",dbname);
        console.log("user: ",user);
        console.log("APP Port: ",process.env.PORT);
        console.log("__dirname: ",__dirname);
    }

    var config =  {
        dialect:  'mysql',
        dialectOptions: {
            ssl: true
        },
        protocol: 'mysql',
        port:port,
        host:host,
        logging: console.log,
        define: {
            timestamps: false
        }
    };

    sq = new Sequelize(dbname, user, password, config);

    sq
        .authenticate()
        .then(function(err) {
            console.log('Connection has been established successfully.');
        }, function (err) {
            console.log('Unable to connect to the database:', err);
        });
    console.log("Database Setup");

    global.db = {
        Sequelize: Sequelize,
        sequelize: sq,
        User: sq.import(__dirname + '/user'),
        Customers: sq.import(__dirname + '/customers'),
        Employees: sq.import(__dirname + '/employees'),
        Offices: sq.import(__dirname + '/offices'),
        Orderdetails: sq.import(__dirname + '/orderdetails'),
        Orders: sq.import(__dirname + '/orders'),
        Payments: sq.import(__dirname + '/payments'),
        Productlines: sq.import(__dirname + '/productlines'),
        Products: sq.import(__dirname + '/products')
    };

}
module.exports = global.db;

