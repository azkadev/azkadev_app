var PORT = process.env.PORT || 8000 || 3000;
var HOST = process.env.HOST || '0.0.0.0';
var app = require('fastify').fastify({ logger: false, ignoreTrailingSlash: true, trustProxy: true });
var { api } = require("./api");
var responseJSON = require("./response.json");

var listApiMethod = [
    "signup",
    "signin",
];
app.all("/", async function (req, res) {
    var response = {
        "status_bool": true,
        "status_code": 200,
        "result": {
            "message": "Server run normal"
        }
    };
    return res.status(response["status_code"]).send(response);
});


app.get("/request/:method", async function (req, res) {
    try {
        var { method } = req.params;
        var parameters = req.query;
        if (method) {
            if (RegExp(`^(${listApiMethod.join("|")})$`, "i").exec(method)) {
                return await api(req, res, parameters);
            }
            return res.status(responseJSON["method"]["not_listed"]["status_code"]).send(responseJSON["method"]["not_listed"]);
        } else {
            return res.status(responseJSON["method"]["not_found"]["status_code"]).send(responseJSON["method"]["not_found"]);
        }
    } catch (e) {

    }
});

app.post("/request/:method", async function (req, res) {
    try {
        var { method } = req.params;
        var parameters = req["body"];
        if (method) {
            if (RegExp(`^(${listApiMethod.join("|")})$`, "i").exec(method)) {
                return await api(req, res, parameters);
            }
        } else {
            return res.status(responseJSON["method"]["not_found"]["status_code"]).send(responseJSON["method"]["not_found"]);
        }
    } catch (e) {

    }
});


app.ready(function () {
    console.log(app.printRoutes({ commonPrefix: false }));
});

app.listen({ port: PORT, host: HOST, backlog: 511 }, async function (err, addres) {
    if (err) throw err;
    console.log(`server run ${addres}`);
});