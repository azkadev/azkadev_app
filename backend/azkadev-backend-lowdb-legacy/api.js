var responseJSON = require("./response.json");
var low = require("lowdb");
var FileAsync = require("lowdb/adapters/FileAsync");
async function api(req, res, parameters) {
    var { method } = req.params;

    

    if (method) {

        if (RegExp("^(signup|signin)$").exec(method)) {
            if (typeof parameters["username"] != "string"){

            }

            if (String(parameters["username"]).length < 5){

            }

            if (String(parameters["username"]).length > 15){
                
            }

            if (!RegExp("^[a-z0-9]+$","i").exec(parameters["username"])){

            }

            if (typeof parameters["password"] != "string"){

            }

            if (String(parameters["password"]).length < 8){

            }

            if (String(parameters["password"]).length > 25){
                
            }

            if (RegExp("^signup)$").exec(method)) {
                var getData = "";
            }

        }


    }
}

module.exports = {
    api
};