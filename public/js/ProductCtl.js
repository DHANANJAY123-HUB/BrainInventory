/**
 * User Controller
 * @param {*} $scope 
 * @param {*} $localStorage 
 * @param {*} ServiceLocator 
 */
var productCtl = function ($scope, ServiceLocator) {

    //initialize scope
    initScope($scope, 'Product', ServiceLocator);

    $scope.preload = function () {
        ServiceLocator.http.get('Product/preload', null, function (response) {
            $scope.roleList = response;
        })
    }

    /**
     * Uploads User Picture 
     * 
     * @param {*} id 
     */
    $scope.uploadPic = function (id) {
        if (id && id > 0) {
            ServiceLocator.http.postMutipart('Product/profilePic', $scope.files, { "id": id }, function (response) {
                console.log(response);
            })
        }
    }

    // Display page
    $scope.search();

    //Preload Data
    $scope.preload();

    

}
app.controller("productCtl", productCtl)