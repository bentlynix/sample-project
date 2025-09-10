module.exports = function (app) {
    app.get('/', function (req, res) {
        res.render('views'); // index view file is rendered when HTTP GET '/' called
    });
}