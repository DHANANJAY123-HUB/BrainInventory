
var RoleService = require("./RoleService");
var UserService = require("./UserService");
var ProductService = require("./ProductService");

/**
 * Locate service 
 */
class ServiceLocator {

  constructor() {
    this.db = 'MySQL';
  }
  
  static getRoleService() {
    return new RoleService();
  }
  static getUserService() {
    return new UserService();
  }
  static getProductService() {
    return new ProductService();
  }
  
  


}
module.exports = ServiceLocator;
