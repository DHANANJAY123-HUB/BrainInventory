var Product = require("../bean/Product");
var BaseService = require("./BaseService")

class ProductService extends BaseService {


    /**
     * Get preload data 
     * @param {*} request 
     * @param {*} response 
     */
    preload(request, response) {
        var rService = ServiceLocator.getRoleService();
        rService.search('', null, function (err, result) {
            response.json(result.list)
        })
    };

    /**
     * Finds Product by primary key id
     * 
     * @param {*} id 
     * @param {*} callback 
     * @param {*} ctx 
     */
    findByPk(id, callback, ctx) {
        var sql = "SELECT * FROM st_product WHERE ID= ?";
        var params = [id];
        super.executeSQLForObject(sql, params, new Product(), callback);
    };
    /**
     * Search user by FirstName,LastName,Login,MobileNo,DOB
     * Returns User bean
     * @param {*} user 
     * @param {*} callback 
     */
    search(product, pageNo, callback) {
        var sql = "SELECT * FROM st_product where 1=1 ";

        if (product.productName) {
            sql += " and Product_NAME = '" + product.productName + "'";
        }
        if (product.description) {
            sql += " and DESCRIPTION = '" + product.description + "'";
        }
        if (product.price) {
            sql += " and PRICE = '" + product.price + "'";
        }
        
        super.executeSQLForList(sql, { "pageNo": pageNo }, new Product(), function (err, list) {
            callback(err, list);
        });
    }

    
    /**
     * Adds a record and returns primary key
     * 
     * @param {*} product 
     * @param {*} callback 
     * @param {*} ctx 
     */

    add(product, callback, ctx) {
        var sql = "INSERT INTO st_product (CREATED_DATETIME,MODIFIED_DATETIME, PRODUCT_NAME, DESCRIPTION, PRICE, PIC) "
            + " VALUES (NOW(),NOW(),?,?,?,?)";
        var params = [product.productName, product.description, product.price, product.pic];
        super.executeSQL(sql, params, function (err, result) {
            if (err) {
                callback(err);
            } else {
                callback(err, result.insertId);
            }
        });
    };

    /**
     * Updates a record and returns count.
     * @param {*} product 
     * @param {*} callback 
     * @param {*} ctx 
     */
    update(product, callback, ctx) {
        var sql = "UPDATE st_product SET   MODIFIED_DATETIME = NOW(), PRODUCTNAME=?,DESCRIPTION=?,PRICE=?, WHERE ID=?"
        var params = [product.productName, product.description,product.price, product.id];
        super.executeSQL(sql, params, function (err, result) {
            if (err) {
                callback(err);
            } else {
                callback(err, result.affectedRows);
            }
        });
    }

    /**
     * Deletes record and return role bean.
     * @param {*} id 
     * @param {*} callback 
     * @param {*} ctx 
     */
    delete(id, callback, ctx) {
        super.delete(id, 'st_product', callback, ctx);
    }
}

module.exports = ProductService;

