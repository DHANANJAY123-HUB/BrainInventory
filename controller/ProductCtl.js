var BaseCtl = require("../controller/BaseCtl");
var Product = require("../bean/Product");
var ServiceLocator = require("../services/ServiceLocator");

class ProductCtl extends BaseCtl {

constructor() {
    super();
    this.service = ServiceLocator.getProductService();
}

/**
 * Returns Product bean populated from request parameters. 
 */
getBean(request) {
    var product = new Product();
    product.populateRequest(request.body);
    return product;
};

/**
 * Returns service of this controller.
 */
getService() {
    return this.service;
};
}

module.exports = ProductCtl;
