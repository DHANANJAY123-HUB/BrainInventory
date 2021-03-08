var formidable = require('formidable');
var fs = require('fs');

var BaseCtl = require("../controller/BaseCtl");
var EmailService = require('../utility/EmailService');
var MailMessage = require('../utility/MailMessage');
var EmailBuilder = require('../utility/EmailBuilder');
var DataUtility = require('../utility/DataUtility');
var User = require("../bean/User");
var Response = require("../bean/Response");
var ServiceLocator = require("../services/ServiceLocator");

/**
 * Contains User REST APIs.
 */
class UserCtl extends BaseCtl {

    constructor() {
        super();
        this.service = ServiceLocator.getUserService();
    }

    /**
     * Get preload data.
     * @param {*} request 
     * @param {*} response 
     */

    preload(request, response) {
        var roleService = ServiceLocator.getRoleService();
        roleService.search('', null, function (err, result) {
            response.json(result.list)
        })
    };

    RegisterUser(request, response) {
        var bean = this.getBean(request);
        bean.roleId = 1;
       
        var user =bean;
        this.service.add(bean, function (err, pk) {
          //var r = new Response(err, "Record has been saved successfully.");
            //response.json(r);

            //by ms

            if (!err) {
                //test code 
                console.log(JSON.stringify(user));
                var m = {
                    login: user.login,
                    password: user.password,
                    firstName: user.firstName,
                    lastName: user.lastName
                };

              // var msg = EmailBuilder.getForgetPasswordMessage(m);
                var msg = EmailBuilder.getSignUpMessage(m);
               var msg = {
                   to :'',
                   subject : 'Save Record',
                   message :'Data save'
               }
               
                msg.to = user.login;
                var ser = new EmailService()
                ser.sendEmail(msg, function (err, result) {
                    if (err) {
                        var r = new Response(err, result);
                        response.json(r);
                    } else {
                        var r = new Response(err, "Record has been saved successfully");
                        response.json(r);
                    }
                });
            } else {
                var r = new Response(err, user);
                response.json(r);
            }
            

        });
    }
    /**
     * Authenticates a User. 
     * @param {*} request 
     * @param {*} response 
     */
    login(request, response) {
        var bean = this.getBean(request);
        this.service.authenticate(bean, function (err, result) {
            console.log(err);
            if (!err) {
                request.session.user = result;
                console.log("---->" + request.session.user);
            }
            var r = new Response(err, result);
            response.json(r);
        });
    }

    /**
     * Sends email of forgotten  password
     * @param {*} request 
     * @param {*} response 
     */
    forgotPassword(request, response) {
        this.service.findByLogin(request.body.login, function (err, user) {
            //console.log(user);
            if (!err) {
                //test code 
                var m = {
                    login: user.login,
                    password: user.password,
                    firstName: user.firstName,
                    lastName: user.lastName
                };

                var msg = EmailBuilder.getForgetPasswordMessage(m);
                msg.to = user.login;
                var ser = new EmailService()
                ser.sendEmail(msg, function (err, result) {
                    if (err) {
                        var r = new Response(err, result);
                        response.json(r);
                    } else {
                        var r = new Response(err, "Password has been sent to your registred email id");
                        response.json(r);
                    }
                });
            } else {
                var r = new Response(err, user);
                response.json(r);
            }
        });
    }

    

    /**
     * returns user profile data
     * @param {*} req 
     * @param {*} res 
     */
    myProfile(req, res) {
        var service = this.getService();
        var id = req.session.user.id; //get user from session
        service.findByPk(id, function (err, bean) {
            var r = new Response(err, bean);;
            res.json(r);
        });
    }

    /**
     * Destroys current session.
     * 
     * @param {*} request 
     * @param {*} response 
     */
    logout(request, response) {
        request.session.destroy();
        response.json(new Response(null, 'ok'));
    }

    /**
     * Returns menu items 
     * 
     * @param {*} request 
     * @param {*} response 
     */
    menu(request, response) {
        var bar = [];
        if (request.session.user) {
            if(request.session.user.roleName=='Admin'){
            bar =
                [
                    { text: 'Product', link: '#!product' }
                    
                    
                    
                ]}
                
                
        } else {
            bar =
                [
                    { text: 'Login', link: '#!login' }
                    
                ]
        }
        var r = new Response(null, bar);
        response.json(r);
    }


    /**
     * Updates profile picture
     * 
     * @param {*} request 
     * @param {*} response 
     */
    profilePic(request, response) {

        console.log('...profilePic');
        var form = new formidable.IncomingForm();

        var self = this;

        form.parse(request, function (err, params, files) {

            //Parse multipart data
            console.log('id', params.id);
            console.log('file', files.pic);

            var pic = {
                id: params.id,
                data: fs.readFileSync(files.pic.path),
                type: files.pic.type,
                name: files.pic.name
            };

            self.service.updatePicture(pic, function (err, result) {
                var r = new Response(err, result);
                response.json(r);
            });
        });
    }

    

    /**
     * Returns bean of User controller.
     * @param {*} request 
     */
    getBean(request) {
        var user = new User();
        user.populateRequest(request.body);
        return user;
    };

    /**
     * Returns service of User controller.
     */
    getService() {
        return this.service;
    };
}
module.exports = UserCtl;
