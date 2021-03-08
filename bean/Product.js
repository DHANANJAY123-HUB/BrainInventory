var BaseBean = require("../bean/BaseBean");

class Product extends BaseBean {

    constructor() {
        super();
        this.productName = "";
        this.description = "";
        this.price = "";
        this.image = "";
    };

    /**
       * Set populateResult into bean.
       * @param {*} res 
       */
    populateResult(res) {
        this.id = res.ID;
        this.productName = res.PRODUCT_NAME;
        this.description = res.DESCRIPTION;
        this.price = res.PRICE;
        this.image = res.IMAGE;
        this.createdBy = res.CREATED_BY;
        this.modifiedBy = res.MODIFIED_BY;
        this.createdDateTime = res.CREATED_DATETIME;
        this.modifiedDateTime = res.MODIFIED_DATETIME;
    };
    
    /**
       * Get request data from body.
       * @param {*} body 
       */
    populateRequest(body) {
        if (body.id) {
            this.id = body.id;
        }
        if (body.productName) {
            this.productName = body.productName;
        }
        if (body.description) {
            this.description = body.description;
        }
        if (body.price) {
            this.price = body.price;
        }
        if (body.image) {
            this.image = body.image;
        }
        if (body.size) {
            this.size = body.size;
        }
        if (body.pageNo) {
            this.pageNo = body.pageNo;
        }
    };
}

module.exports = Product;
